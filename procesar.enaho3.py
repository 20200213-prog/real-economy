import subprocess
import os

# ==============================================================================
# CONFIGURACIÓN INICIAL
# ==============================================================================
os.makedirs("datos crudos", exist_ok=True)
os.makedirs("resultados", exist_ok=True)

anios = [2017, 2018, 2019, 2020, 2021]
conector_panel = "enaho01-2017-2021-100-panel.dta"

ruta_actual = os.getcwd()
do_code = f"cd \"{ruta_actual}\"\n\n"
do_code += "clear all\n"
do_code += "set more off\n"
do_code += "set maxvar 120000\n\n" 

print("Python: Construyendo la Arquitectura de Datos (Auditoría Estricta 1:1 y m:1)...")

# ==============================================================================
# BUCLE PRINCIPAL (Se repite exactamente para cada año)
# ==============================================================================
for year in anios:
    yy = str(year)[-2:] # Extrae '21' de 2021
    
    do_code += f"**************************************************\n"
    do_code += f"* PROCESANDO AÑO {year}\n"
    do_code += f"**************************************************\n\n"
    
    # ---------------------------------------------------------
    # MACROS DE LIMPIEZA UNIVERSAL (Se inyectarán en cada base)
    # ---------------------------------------------------------
    codigo_armonizacion = "\n    * --- Armonizacion de nombres (Typos INEI) ---\n"
    codigo_armonizacion += f"    capture rename p713b{yy} p713b\n"
    codigo_armonizacion += f"    capture rename p713d{yy} p713d\n"
    codigo_armonizacion += f"    capture rename p713e{yy} p713e\n"
    codigo_armonizacion += "    capture rename factor_07 factor07\n"
    codigo_armonizacion += "    * --------------------------------------------\n"

    codigo_limpieza_llaves = "\n    * --- Estandarizacion extrema de llaves (Anti-Ceros y Espacios) ---\n"
    codigo_limpieza_llaves += "    foreach var in conglome vivienda hogar codperso codinfor { \n"
    codigo_limpieza_llaves += "        capture confirm variable `var'\n"
    codigo_limpieza_llaves += "        if _rc == 0 {\n"
    codigo_limpieza_llaves += "            capture tostring `var', replace force\n"
    codigo_limpieza_llaves += "            capture replace `var' = trim(`var')\n"
    codigo_limpieza_llaves += "            capture destring `var', replace force\n"
    codigo_limpieza_llaves += "        }\n"
    codigo_limpieza_llaves += "    }\n"
    codigo_limpieza_llaves += "    * -----------------------------------------------------------------\n"

    # Macro de Ahorro de Memoria Extremo
    codigo_ahorro_memoria = "\n    * --- Ahorro de Memoria: Borrado Quirúrgico ---\n"
    redundantes = ["año", "a?o", "mes", "nconglome", "ubigeo", "dominio", "estrato", "periodo", "codinfor"]
    for rv in redundantes:
        codigo_ahorro_memoria += f"    capture drop {rv}\n"
    codigo_ahorro_memoria += "    capture drop factor*\n"
    codigo_ahorro_memoria += "    capture drop factora*\n"
    codigo_ahorro_memoria += "    * ---------------------------------------------\n"

    # ---------------------------------------------------------
    # 0. PRE-PROCESAMIENTO DE MÓDULOS ESTÁNDAR
    # ---------------------------------------------------------
    # MODULOS A NIVEL DE HOGAR
    modulos_hogar = [
        f"enaho01-{year}-100.dta", f"enaho01-{year}-700.dta", f"sumaria-{year}.dta"
    ]
    
    for mod_name in modulos_hogar:
        do_code += f"capture confirm file \"datos crudos/{mod_name}\"\n"
        do_code += "if _rc == 0 {\n"
        do_code += f"    use \"datos crudos/{mod_name}\", clear\n"
        do_code += codigo_armonizacion
        do_code += codigo_limpieza_llaves
        
        # Filtro estricto para garantizar el m:1
        do_code += "    drop if missing(conglome) | missing(vivienda) | missing(hogar)\n"
        do_code += "    duplicates drop conglome vivienda hogar, force\n"
        
        do_code += f"    save \"datos crudos/{mod_name.replace('.dta', '_clean.dta')}\", replace\n"
        do_code += "}\n\n"

    # MODULOS A NIVEL DE PERSONA
    modulos_individuo = [
        f"enaho01a-{year}-300.dta", f"enaho01a-{year}-400.dta",
        f"enaho01a-{year}-500.dta", f"enaho01b-{year}-1.dta", f"enaho01b-{year}-2.dta"
    ]
    
    for mod_name in modulos_individuo:
        do_code += f"capture confirm file \"datos crudos/{mod_name}\"\n"
        do_code += "if _rc == 0 {\n"
        do_code += f"    use \"datos crudos/{mod_name}\", clear\n"
        do_code += codigo_armonizacion
        do_code += codigo_limpieza_llaves
        
        # Filtro estricto para garantizar el 1:1
        do_code += "    drop if missing(conglome) | missing(vivienda) | missing(hogar) | missing(codperso)\n"
        do_code += "    duplicates drop conglome vivienda hogar codperso, force\n"
        
        do_code += f"    save \"datos crudos/{mod_name.replace('.dta', '_clean.dta')}\", replace\n"
        do_code += "}\n\n"

    # ---------------------------------------------------------
    # 1. TRATAMIENTO DE PROGRAMAS SOCIALES 
    # ---------------------------------------------------------
    # --- MÓDULO 700A ---
    do_code += f"capture confirm file \"datos crudos/enaho01-{year}-700a.dta\"\n"
    do_code += "if _rc == 0 {\n"
    do_code += f"    use \"datos crudos/enaho01-{year}-700a.dta\", clear\n"
    do_code += codigo_armonizacion
    do_code += "    capture rename p702 codperso\n"
    do_code += "    capture tostring codperso, replace force\n"
    do_code += "    capture tostring codinfor, replace force\n"
    do_code += "    capture replace codperso = trim(codperso)\n"
    do_code += "    capture replace codinfor = trim(codinfor)\n"
    do_code += "    capture replace codperso = codinfor if codperso == \"\" | codperso == \".\"\n"
    do_code += codigo_limpieza_llaves
    do_code += "    gen programa_social1 = 0\n"
    do_code += "    replace programa_social1 = 1 if inlist(p703,1,2,3,4,5,6,7,8,10)\n"
    
    do_code += "    drop if missing(conglome) | missing(vivienda) | missing(hogar) | missing(codperso)\n"
    do_code += "    duplicates drop conglome vivienda hogar codperso p703, force\n"
    
    do_code += "    bysort conglome vivienda hogar codperso: gen num_item = _n\n"
    do_code += "    tostring num_item, generate(j_str)\n"
    do_code += "    replace j_str = \"_\" + j_str\n"
    do_code += "    drop num_item\n"
    
    do_code += codigo_ahorro_memoria
    
    do_code += "    ds conglome vivienda hogar codperso j_str, not\n"
    do_code += "    local vars `r(varlist)'\n"
    do_code += "    foreach v of local vars {\n"
    do_code += "        rename `v' v_`v'\n"
    do_code += "    }\n"
    
    do_code += "    ds conglome vivienda hogar codperso j_str, not\n"
    do_code += "    local vars_wide `r(varlist)'\n"
    do_code += "    reshape wide `vars_wide', i(conglome vivienda hogar codperso) j(j_str) string\n"
    do_code += "    duplicates drop conglome vivienda hogar codperso, force\n"
    do_code += f"    save \"datos crudos/enaho01-{year}-700a_wide.dta\", replace\n"
    do_code += "}\n\n"

    # --- MÓDULO 700B ---
    do_code += f"capture confirm file \"datos crudos/enaho01-{year}-700b.dta\"\n"
    do_code += "if _rc == 0 {\n"
    do_code += f"    use \"datos crudos/enaho01-{year}-700b.dta\", clear\n"
    do_code += codigo_armonizacion
    do_code += "    capture rename p711n codperso\n"
    do_code += "    capture tostring codperso, replace force\n"
    do_code += "    capture tostring codinfor, replace force\n"
    do_code += "    capture replace codperso = trim(codperso)\n"
    do_code += "    capture replace codinfor = trim(codinfor)\n"
    do_code += "    capture replace codperso = codinfor if codperso == \"\" | codperso == \".\"\n"
    do_code += codigo_limpieza_llaves
    do_code += "    gen programa_social2 = 0\n"
    do_code += "    replace programa_social2 = 1 if inlist(p712,1,2,3,4,5,6,7,8,9,10,11,12,13,15,16,17,18,19,29,30)\n"
    do_code += f"    gen periodo_prog{yy} = p713d - p713b\n"
    
    do_code += "    drop if missing(conglome) | missing(vivienda) | missing(hogar) | missing(codperso)\n"
    do_code += "    duplicates drop conglome vivienda hogar codperso p712, force\n"
    
    do_code += "    bysort conglome vivienda hogar codperso: gen num_item = _n\n"
    do_code += "    tostring num_item, generate(j_str)\n"
    do_code += "    replace j_str = \"_\" + j_str\n"
    do_code += "    drop num_item\n"
    
    do_code += codigo_ahorro_memoria
    
    do_code += "    ds conglome vivienda hogar codperso j_str, not\n"
    do_code += "    local vars `r(varlist)'\n"
    do_code += "    foreach v of local vars {\n"
    do_code += "        rename `v' v_`v'\n"
    do_code += "    }\n"
    
    do_code += "    ds conglome vivienda hogar codperso j_str, not\n"
    do_code += "    local vars_wide `r(varlist)'\n"
    do_code += "    reshape wide `vars_wide', i(conglome vivienda hogar codperso) j(j_str) string\n"
    do_code += "    duplicates drop conglome vivienda hogar codperso, force\n"
    do_code += f"    save \"datos crudos/enaho01-{year}-700b_wide.dta\", replace\n"
    do_code += "}\n\n"

    # ---------------------------------------------------------
    # 2. TRATAMIENTO DEL MÓDULO AGROPECUARIO 
    # ---------------------------------------------------------
    modulos_agro_multiples = [
        (f"enaho02-{year}-2000a.dta", "num_parcela"),
        (f"enaho02-{year}-2100.dta", "num_cultivo"),
        (f"enaho02-{year}-2200.dta", "num_subprod_agri"),
        (f"enaho02-{year}-2300.dta", "num_forestal"),
        (f"enaho02-{year}-2500.dta", "num_pecuario"),
        (f"enaho02-{year}-2600.dta", "num_subprod_pec")
    ]
    
    for mod_name, id_var in modulos_agro_multiples:
        do_code += f"capture confirm file \"datos crudos/{mod_name}\"\n"
        do_code += "if _rc == 0 {\n"
        do_code += f"    use \"datos crudos/{mod_name}\", clear\n"
        do_code += codigo_armonizacion
        do_code += codigo_limpieza_llaves
        
        do_code += "    drop if missing(conglome) | missing(vivienda) | missing(hogar) | missing(codperso)\n"
        do_code += "    duplicates drop\n" 
        
        do_code += f"    bysort conglome vivienda hogar codperso: gen {id_var} = _n\n"
        do_code += f"    tostring {id_var}, generate(j_str)\n"
        do_code += "    replace j_str = \"_\" + j_str\n"
        do_code += f"    drop {id_var}\n"
        
        do_code += codigo_ahorro_memoria
        
        do_code += "    ds conglome vivienda hogar codperso j_str, not\n"
        do_code += "    local vars `r(varlist)'\n"
        do_code += "    foreach v of local vars {\n"
        do_code += "        rename `v' v_`v'\n"
        do_code += "    }\n"
        
        do_code += "    ds conglome vivienda hogar codperso j_str, not\n"
        do_code += "    local vars_wide `r(varlist)'\n"
        do_code += "    reshape wide `vars_wide', i(conglome vivienda hogar codperso) j(j_str) string\n"
        do_code += "    duplicates drop conglome vivienda hogar codperso, force\n"
        do_code += f"    save \"datos crudos/{mod_name.replace('.dta', '_wide.dta')}\", replace\n"
        do_code += "}\n\n"

    # ---------------------------------------------------------
    # 3. TRATAMIENTO DE GASTOS AGROPECUARIOS (1 FILA POR PERSONA)
    # ---------------------------------------------------------
    modulos_agro_1a1 = [
        f"enaho02-{year}-2000.dta",
        f"enaho02-{year}-2400.dta",
        f"enaho02-{year}-2700.dta"
    ]
    
    for mod_name in modulos_agro_1a1:
        do_code += f"capture confirm file \"datos crudos/{mod_name}\"\n"
        do_code += "if _rc == 0 {\n"
        do_code += f"    use \"datos crudos/{mod_name}\", clear\n"
        do_code += codigo_armonizacion
        do_code += codigo_limpieza_llaves
        
        do_code += "    drop if missing(conglome) | missing(vivienda) | missing(hogar) | missing(codperso)\n"
        do_code += "    duplicates drop conglome vivienda hogar codperso, force\n" 
        
        do_code += f"    save \"datos crudos/{mod_name.replace('.dta', '_clean.dta')}\", replace\n"
        do_code += "}\n\n"
    
    # ---------------------------------------------------------
    # 4. EL GRAN ENSAMBLAJE TRANSVERSAL RIGUROSO
    # ---------------------------------------------------------
    do_code += f"use \"datos crudos/enaho01-{year}-200.dta\", clear\n"
    do_code += codigo_limpieza_llaves
    
    do_code += "drop if missing(conglome) | missing(vivienda) | missing(hogar) | missing(codperso)\n"
    do_code += "duplicates drop conglome vivienda hogar codperso, force\n\n"
    
    modulos_personas = [
        f"enaho01a-{year}-300_clean.dta", f"enaho01a-{year}-400_clean.dta", f"enaho01a-{year}-500_clean.dta",
        f"enaho01b-{year}-1_clean.dta", f"enaho01b-{year}-2_clean.dta",
        f"enaho01-{year}-700a_wide.dta", f"enaho01-{year}-700b_wide.dta",
        f"enaho02-{year}-2000_clean.dta", f"enaho02-{year}-2000a_wide.dta", 
        f"enaho02-{year}-2100_wide.dta", f"enaho02-{year}-2200_wide.dta", 
        f"enaho02-{year}-2300_wide.dta", f"enaho02-{year}-2400_clean.dta", 
        f"enaho02-{year}-2500_wide.dta", f"enaho02-{year}-2600_wide.dta", 
        f"enaho02-{year}-2700_clean.dta"
    ]
    
    for mod in modulos_personas:
        do_code += f"capture confirm file \"datos crudos/{mod}\"\n"
        do_code += "if _rc == 0 {\n"
        # MERGE 1:1 Estricto para Módulos de Persona
        do_code += f"    merge 1:1 conglome vivienda hogar codperso using \"datos crudos/{mod}\"\n"
        do_code += "    drop if _merge == 2\n" 
        do_code += "    drop _merge\n"
        do_code += "}\n"
        
    do_code += f"save \"datos crudos/temp_personas_{year}.dta\", replace\n\n"
    
    do_code += f"use \"datos crudos/temp_personas_{year}.dta\", clear\n"
    
    modulos_hogares = [
        f"enaho01-{year}-100_clean.dta",
        f"enaho01-{year}-700_clean.dta", 
        f"sumaria-{year}_clean.dta"
    ]
    
    for mod in modulos_hogares:
        do_code += f"capture confirm file \"datos crudos/{mod}\"\n"
        do_code += "if _rc == 0 {\n"
        # MERGE m:1 Estricto para Módulos de Hogar
        do_code += f"    merge m:1 conglome vivienda hogar using \"datos crudos/{mod}\"\n"
        do_code += "    drop if _merge == 2\n" 
        do_code += "    drop _merge\n"
        do_code += "}\n"
        
    do_code += f"save \"datos crudos/{year}.dta\", replace\n\n"
    
    # ---------------------------------------------------------
    # 5. EL ENGANCHE PANEL
    # ---------------------------------------------------------
    do_code += f"use \"datos crudos/{year}.dta\", clear\n"
    do_code += f"rename conglome con_{yy}\n"
    do_code += f"rename vivienda viv_{yy}\n"
    do_code += f"rename hogar hog_{yy}\n"
    do_code += f"save \"datos crudos/{year}n.dta\", replace\n\n"
    
    do_code += f"use \"datos crudos/{conector_panel}\", clear\n"
    
    do_code += "    * --- Armonizar nombres mutantes del Panel ---\n"
    do_code += f"    capture rename factor_07_{yy} factor07_{yy}\n"       
    do_code += f"    capture rename factor07_{yy}_{yy} factor07_{yy}\n"   
    do_code += f"    capture rename factor07_{yy}a factor07_{yy}\n"       
    do_code += "    capture rename facpanel* fac_panel*\n"                
    do_code += "    * -----------------------------------------------------------\n"

    vars_keep = f"numpanh mes_{yy} conglome_{yy} vivienda_{yy} hogar_{yy} ubigeo_{yy} dominio_{yy} estrato_{yy} periodo_{yy} tipenc_{yy} fecent_{yy} result_{yy} panel_{yy} p101_{yy} p105a_{yy} hpanel_* fac_panel* factor07_{yy}"
    do_code += f"keep {vars_keep}\n"
    
    do_code += f"rename conglome_{yy} con_{yy}\n"
    do_code += f"rename vivienda_{yy} viv_{yy}\n"
    do_code += f"rename hogar_{yy} hog_{yy}\n"
    
    do_code += "    * --- Estandarizacion extrema del Panel ---\n"
    do_code += f"    foreach var in con_{yy} viv_{yy} hog_{yy} numpanh {{\n"
    do_code += "        capture confirm variable `var'\n"
    do_code += "        if _rc == 0 {\n"
    do_code += "            capture tostring `var', replace force\n"
    do_code += "            capture replace `var' = trim(`var')\n"
    do_code += "            capture destring `var', replace force\n"
    do_code += "        }\n"
    do_code += "    }\n"
    
    do_code += f"capture destring mes_{yy}, replace force\n"
    do_code += f"keep if inrange(mes_{yy}, 1, 12)\n"
    do_code += f"drop if missing(con_{yy}) | missing(viv_{yy}) | missing(hog_{yy})\n"
    do_code += f"duplicates drop con_{yy} viv_{yy} hog_{yy}, force\n"
    
    do_code += f"gen ID = {year}\n" 
    
    # MERGE 1:m (El panel es hogar único, transversal son múltiples miembros)
    do_code += f"merge 1:m con_{yy} viv_{yy} hog_{yy} using \"datos crudos/{year}n.dta\"\n"
    do_code += "drop if _merge == 1\n"
    do_code += "drop _merge\n"
    
    do_code += f"rename con_{yy} conglome\n"
    do_code += f"rename viv_{yy} vivienda\n"
    do_code += f"rename hog_{yy} hogar\n"
    do_code += f"save \"resultados/{year}_enahop.dta\", replace\n\n"

# ==============================================================================
# CAPA 3: EL GRAN APPEND (UNIÓN LONGITUDINAL)
# ==============================================================================
print("Python: Construyendo la Capa 3 (Base Maestra Panel Integrada)...")

do_code += "**************************************************\n"
do_code += "* CAPA 3: APPEND MASIVO (CREANDO BASE MASTER INDIVIDUO-AÑO)\n"
do_code += "**************************************************\n\n"

do_code += "use \"resultados/2017_enahop.dta\", clear\n"
for year in range(2018, 2022):
    do_code += f"capture confirm file \"resultados/{year}_enahop.dta\"\n"
    do_code += "if _rc == 0 {\n"
    do_code += f"    append using \"resultados/{year}_enahop.dta\", force\n"
    do_code += "}\n"

do_code += "save \"resultados/BASE_MAESTRA_PANEL_2017_2021.dta\", replace\n\n"

# ==============================================================================
# CAPA 4: AGREGACIÓN FAMILIAR Y FEATURE ENGINEERING
# ==============================================================================
print("Python: Aplicando reglas de Capa 4 (De Individuo a Familia)...")

do_code += "**************************************************\n"
do_code += "* CAPA 4: CREACION DE LA UNIDAD BASICA (LA FAMILIA)\n"
do_code += "**************************************************\n\n"

do_code += "use \"resultados/BASE_MAESTRA_PANEL_2017_2021.dta\", clear\n\n"

do_code += "* --- 1. Identificadores Básicos y Núcleo Familiar ---\n"
do_code += "capture tostring numpanh, generate(numpanh_str)\n"
do_code += "gen id_hogar = numpanh_str\n"
do_code += "gen es_jefe = (p203 == 1)\n\n"

do_code += "gen familia = .\n"
do_code += "replace familia = 3 if inlist(p203,8,9,10) // Otros parientes\n"
do_code += "replace familia = 4 if inlist(p203,1,2,3,4,5,6,7,11) // Núcleo duro\n"
do_code += "keep if familia == 4\n"

do_code += "tostring familia, generate(familia_str)\n"
do_code += "gen id_familia = id_hogar + familia_str\n"
do_code += "destring id_familia, replace\n\n"

do_code += "bysort id_familia ID: egen miembros_fam = count(id_familia)\n\n"

do_code += "* --- 2. Bienestar y Democracia ---\n"
do_code += "gen bienestar_p33 = inlist(p33_2, 1, 2)\n"
do_code += "gen bienestar_p37 = inlist(p37, 3, 4)\n"
do_code += "gen bienestar_fam2 = (bienestar_p33 == 1 & bienestar_p37 == 1)\n"
do_code += "gen bienestar_familiar = inlist(p33_2, 1, 2)\n"
do_code += "gen insat_demo = inlist(p7, 1, 2, 5)\n\n"

do_code += "* (Selección del Representante Inteligente)\n"
do_code += "capture drop missing_rep\n"
do_code += "egen missing_rep = rowmiss(_all)\n"
do_code += "capture confirm variable p208a\n"
do_code += "if _rc != 0 {\n"
do_code += "    gen p208a = 0\n"
do_code += "}\n"
do_code += "gsort id_familia ID -es_jefe missing_rep -p208a codperso\n"
do_code += "foreach var in bienestar_fam2 bienestar_familiar insat_demo {\n"
do_code += "    by id_familia ID: replace `var' = `var'[1]\n"
do_code += "}\n\n"

do_code += "* --- 3. Negocio Propio, Autosuministro e Independencia Económica ---\n"
do_code += "gen negocio_p507 = inlist(p507, 1, 2)\n"
do_code += "gen negocio_p517 = inlist(p517, 1, 2)\n"
do_code += "gen negocio_indiv = (negocio_p507 == 1 | negocio_p517 == 1)\n"
do_code += "bysort id_familia ID: egen negocio_fam = max(negocio_indiv)\n\n"

do_code += "gen autosum_p535 = (p535 == 1)\n"
do_code += "gen autosum_p542 = (p542 == 1)\n"
do_code += "gen autosum_indiv = (autosum_p535 == 1 | autosum_p542 == 1)\n"
do_code += "bysort id_familia ID: egen autosum_fam = max(autosum_indiv)\n\n"

do_code += "gen negocio_propio = (negocio_fam == 1 & autosum_fam == 1)\n"
do_code += "gen trabajadores_independientes = (negocio_indiv == 1 & autosum_indiv == 1)\n"
do_code += "bysort id_familia ID: egen prop_negocio_propio = mean(trabajadores_independientes)\n\n"

do_code += "* --- 4. Ingresos y Peso Salarial ---\n"
do_code += "foreach var in i524a1 d529t i530a d536 i538a1 d540t i541a d543 {\n"
do_code += "    capture confirm variable `var'\n"
do_code += "    if _rc == 0 {\n"
do_code += "        capture replace `var' = 0 if missing(`var')\n"
do_code += "    }\n"
do_code += "    if _rc != 0 {\n"
do_code += "        gen `var' = 0\n"
do_code += "    }\n"
do_code += "}\n\n"

do_code += "gen ingreso_persona = i524a1 + d529t + i530a + d536 + i538a1 + d540t + i541a + d543\n"
do_code += "replace ingreso_persona = 0 if missing(ingreso_persona)\n"
do_code += "bysort id_familia ID: egen ingreso_laboral_fam = total(ingreso_persona)\n"
do_code += "gen peso_salario_ind = ingreso_persona / ingreso_laboral_fam\n"
do_code += "replace peso_salario_ind = 0 if missing(peso_salario_ind)\n"
do_code += "bysort id_familia ID: egen peso_salario_propiofam2 = total(cond(trabajadores_independientes == 1, peso_salario_ind, 0))\n\n"

do_code += "* --- 5. Educación, Civil, Religión, Pobreza, Salud y Edad ---\n"
do_code += "gen educacion_alta = inlist(p301a, 5, 6, 7, 8, 9, 10, 11, 12)\n"
do_code += "capture confirm variable p208a\n"
do_code += "if _rc != 0 {\n"
do_code += "    gen p208a = 0\n"
do_code += "}\n"
do_code += "gen adulto = (p208a >= 17)\n"
do_code += "bysort id_familia ID: egen educ_sum = total(educacion_alta * adulto)\n"
do_code += "bysort id_familia ID: egen adultos = total(adulto)\n"
do_code += "gen educ_fam = (educ_sum / adultos) >= 0.5\n\n"

do_code += "gen casado = (p209 == 2)\n"
do_code += "bysort id_familia ID: egen casado_fam = max(casado)\n\n"

do_code += "gen casa_propia = inlist(p105a, 2)\n"
do_code += "gen titulo_prop = inlist(p106a, 1, 3)\n"
do_code += "gen casa_titulada = (casa_propia == 1 & titulo_prop == 1)\n"
do_code += "gen arraigo_religioso = inlist(p1_16, 3, 4, 5)\n\n"

do_code += "* (Reafirmar Selección del Representante Inteligente)\n"
do_code += "gsort id_familia ID -es_jefe missing_rep -p208a codperso\n"
do_code += "foreach var in casa_propia titulo_prop casa_titulada arraigo_religioso {\n"
do_code += "    by id_familia ID: replace `var' = `var'[1]\n"
do_code += "}\n\n"

do_code += "capture confirm variable pobreza\n"
do_code += "if _rc == 0 {\n"
do_code += "    capture destring pobreza, replace force\n"
do_code += "    gen pobre_indiv = inlist(pobreza, 1, 2)\n"
do_code += "    bysort id_familia ID: egen total_pobres = total(pobre_indiv)\n"
do_code += "    bysort id_familia ID: egen total_personas = count(pobre_indiv)\n"
do_code += "    gen pobre_fam = (total_pobres / total_personas >= 0.5)\n"
do_code += "}\n\n"

do_code += "gen niño = (p208a <= 12)\n"
do_code += "bysort id_familia ID: egen hay_niño = max(niño)\n"
do_code += "gen mayor = (p208a >= 60)\n"
do_code += "gen abuelo = (mayor == 1 & hay_niño == 1)\n"
do_code += "bysort id_familia ID: egen hay_abuelo = max(abuelo)\n"

do_code += "gen enfermo = (p401 == 1)\n"
do_code += "bysort id_familia ID: egen sin_salud = max(enfermo)\n"
do_code += "bysort id_familia ID: egen sin_salud_totalfam = total(enfermo)\n\n"

do_code += "* --- 6. REDUCCIÓN A PANEL FAMILIA-AÑO (REPRESENTANTE INTELIGENTE) ---\n"
do_code += "gsort id_familia ID -es_jefe missing_rep -p208a codperso\n"
do_code += "by id_familia ID: keep if _n == 1\n"
do_code += "drop missing_rep\n\n"

do_code += "save \"resultados/PANEL_FAMILIAR_FINAL.dta\", replace\n"
do_code += "export delimited using \"resultados/PANEL_FAMILIAR_FINAL.csv\", replace\n"

# ==============================================================================
# EJECUCIÓN DEL CÓDIGO EN STATA
# ==============================================================================
with open("ensamblar_panel.do", "w", encoding="utf-8") as file:
    file.write(do_code)

print("Python: Archivo .do generado. ¡Despertando a Stata para el trabajo pesado!")

stata_exe = r"C:\Program Files\Stata17\StataMP-64.exe"
comando = f'"{stata_exe}" -e do ensamblar_panel.do'
subprocess.run(comando, shell=True)

print("Python: ¡Stata terminó! Revisa la carpeta 'resultados' para ver tu Base Familiar.")