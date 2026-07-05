cd "C:\Users\matt\Desktop\tesis enaho"

clear all
set more off
set maxvar 120000

**************************************************
* PROCESANDO AÑO 2012
**************************************************

capture confirm file "datos crudos/enaho01-2012-100.dta"
if _rc == 0 {
    use "datos crudos/enaho01-2012-100.dta", clear

    * --- Armonizacion de nombres (Typos INEI) ---
    capture rename p713b12 p713b
    capture rename p713d12 p713d
    capture rename p713e12 p713e
    capture rename factor_07 factor07
    * --------------------------------------------

    * --- Estandarizacion extrema de llaves (Anti-Ceros y Espacios) ---
    foreach var in conglome vivienda hogar codperso codinfor { 
        capture confirm variable `var'
        if _rc == 0 {
            capture tostring `var', replace force
            capture replace `var' = trim(`var')
            capture destring `var', replace force
        }
    }
    * -----------------------------------------------------------------

    * --- Ahorro de Memoria: Borrado Quirúrgico ---
    capture drop año
    capture drop a?o
    capture drop mes
    capture drop nconglome
    capture drop ubigeo
    capture drop dominio
    capture drop estrato
    capture drop periodo
    capture drop codinfor
    capture drop factor*
    capture drop factora*
    * ---------------------------------------------
    drop if missing(conglome) | missing(vivienda) | missing(hogar)
    duplicates drop conglome vivienda hogar, force
    save "datos crudos/enaho01-2012-100_clean.dta", replace
}

capture confirm file "datos crudos/enaho01-2012-700.dta"
if _rc == 0 {
    use "datos crudos/enaho01-2012-700.dta", clear

    * --- Armonizacion de nombres (Typos INEI) ---
    capture rename p713b12 p713b
    capture rename p713d12 p713d
    capture rename p713e12 p713e
    capture rename factor_07 factor07
    * --------------------------------------------

    * --- Estandarizacion extrema de llaves (Anti-Ceros y Espacios) ---
    foreach var in conglome vivienda hogar codperso codinfor { 
        capture confirm variable `var'
        if _rc == 0 {
            capture tostring `var', replace force
            capture replace `var' = trim(`var')
            capture destring `var', replace force
        }
    }
    * -----------------------------------------------------------------

    * --- Ahorro de Memoria: Borrado Quirúrgico ---
    capture drop año
    capture drop a?o
    capture drop mes
    capture drop nconglome
    capture drop ubigeo
    capture drop dominio
    capture drop estrato
    capture drop periodo
    capture drop codinfor
    capture drop factor*
    capture drop factora*
    * ---------------------------------------------
    drop if missing(conglome) | missing(vivienda) | missing(hogar)
    duplicates drop conglome vivienda hogar, force
    save "datos crudos/enaho01-2012-700_clean.dta", replace
}

capture confirm file "datos crudos/sumaria-2012.dta"
if _rc == 0 {
    use "datos crudos/sumaria-2012.dta", clear

    * --- Armonizacion de nombres (Typos INEI) ---
    capture rename p713b12 p713b
    capture rename p713d12 p713d
    capture rename p713e12 p713e
    capture rename factor_07 factor07
    * --------------------------------------------

    * --- Estandarizacion extrema de llaves (Anti-Ceros y Espacios) ---
    foreach var in conglome vivienda hogar codperso codinfor { 
        capture confirm variable `var'
        if _rc == 0 {
            capture tostring `var', replace force
            capture replace `var' = trim(`var')
            capture destring `var', replace force
        }
    }
    * -----------------------------------------------------------------

    * --- Ahorro de Memoria: Borrado Quirúrgico ---
    capture drop año
    capture drop a?o
    capture drop mes
    capture drop nconglome
    capture drop ubigeo
    capture drop dominio
    capture drop estrato
    capture drop periodo
    capture drop codinfor
    capture drop factor*
    capture drop factora*
    * ---------------------------------------------
    drop if missing(conglome) | missing(vivienda) | missing(hogar)
    duplicates drop conglome vivienda hogar, force
    save "datos crudos/sumaria-2012_clean.dta", replace
}

capture confirm file "datos crudos/enaho01a-2012-300.dta"
if _rc == 0 {
    use "datos crudos/enaho01a-2012-300.dta", clear

    * --- Armonizacion de nombres (Typos INEI) ---
    capture rename p713b12 p713b
    capture rename p713d12 p713d
    capture rename p713e12 p713e
    capture rename factor_07 factor07
    * --------------------------------------------

    * --- Estandarizacion extrema de llaves (Anti-Ceros y Espacios) ---
    foreach var in conglome vivienda hogar codperso codinfor { 
        capture confirm variable `var'
        if _rc == 0 {
            capture tostring `var', replace force
            capture replace `var' = trim(`var')
            capture destring `var', replace force
        }
    }
    * -----------------------------------------------------------------

    * --- Ahorro de Memoria: Borrado Quirúrgico ---
    capture drop año
    capture drop a?o
    capture drop mes
    capture drop nconglome
    capture drop ubigeo
    capture drop dominio
    capture drop estrato
    capture drop periodo
    capture drop codinfor
    capture drop factor*
    capture drop factora*
    * ---------------------------------------------
    drop if missing(conglome) | missing(vivienda) | missing(hogar) | missing(codperso)
    duplicates drop conglome vivienda hogar codperso, force
    save "datos crudos/enaho01a-2012-300_clean.dta", replace
}

capture confirm file "datos crudos/enaho01a-2012-400.dta"
if _rc == 0 {
    use "datos crudos/enaho01a-2012-400.dta", clear

    * --- Armonizacion de nombres (Typos INEI) ---
    capture rename p713b12 p713b
    capture rename p713d12 p713d
    capture rename p713e12 p713e
    capture rename factor_07 factor07
    * --------------------------------------------

    * --- Estandarizacion extrema de llaves (Anti-Ceros y Espacios) ---
    foreach var in conglome vivienda hogar codperso codinfor { 
        capture confirm variable `var'
        if _rc == 0 {
            capture tostring `var', replace force
            capture replace `var' = trim(`var')
            capture destring `var', replace force
        }
    }
    * -----------------------------------------------------------------

    * --- Ahorro de Memoria: Borrado Quirúrgico ---
    capture drop año
    capture drop a?o
    capture drop mes
    capture drop nconglome
    capture drop ubigeo
    capture drop dominio
    capture drop estrato
    capture drop periodo
    capture drop codinfor
    capture drop factor*
    capture drop factora*
    * ---------------------------------------------
    drop if missing(conglome) | missing(vivienda) | missing(hogar) | missing(codperso)
    duplicates drop conglome vivienda hogar codperso, force
    save "datos crudos/enaho01a-2012-400_clean.dta", replace
}

capture confirm file "datos crudos/enaho01a-2012-500.dta"
if _rc == 0 {
    use "datos crudos/enaho01a-2012-500.dta", clear

    * --- Armonizacion de nombres (Typos INEI) ---
    capture rename p713b12 p713b
    capture rename p713d12 p713d
    capture rename p713e12 p713e
    capture rename factor_07 factor07
    * --------------------------------------------

    * --- Estandarizacion extrema de llaves (Anti-Ceros y Espacios) ---
    foreach var in conglome vivienda hogar codperso codinfor { 
        capture confirm variable `var'
        if _rc == 0 {
            capture tostring `var', replace force
            capture replace `var' = trim(`var')
            capture destring `var', replace force
        }
    }
    * -----------------------------------------------------------------

    * --- Ahorro de Memoria: Borrado Quirúrgico ---
    capture drop año
    capture drop a?o
    capture drop mes
    capture drop nconglome
    capture drop ubigeo
    capture drop dominio
    capture drop estrato
    capture drop periodo
    capture drop codinfor
    capture drop factor*
    capture drop factora*
    * ---------------------------------------------
    drop if missing(conglome) | missing(vivienda) | missing(hogar) | missing(codperso)
    duplicates drop conglome vivienda hogar codperso, force
    save "datos crudos/enaho01a-2012-500_clean.dta", replace
}

capture confirm file "datos crudos/enaho01b-2012-1.dta"
if _rc == 0 {
    use "datos crudos/enaho01b-2012-1.dta", clear

    * --- Armonizacion de nombres (Typos INEI) ---
    capture rename p713b12 p713b
    capture rename p713d12 p713d
    capture rename p713e12 p713e
    capture rename factor_07 factor07
    * --------------------------------------------

    * --- Estandarizacion extrema de llaves (Anti-Ceros y Espacios) ---
    foreach var in conglome vivienda hogar codperso codinfor { 
        capture confirm variable `var'
        if _rc == 0 {
            capture tostring `var', replace force
            capture replace `var' = trim(`var')
            capture destring `var', replace force
        }
    }
    * -----------------------------------------------------------------

    * --- Ahorro de Memoria: Borrado Quirúrgico ---
    capture drop año
    capture drop a?o
    capture drop mes
    capture drop nconglome
    capture drop ubigeo
    capture drop dominio
    capture drop estrato
    capture drop periodo
    capture drop codinfor
    capture drop factor*
    capture drop factora*
    * ---------------------------------------------
    drop if missing(conglome) | missing(vivienda) | missing(hogar) | missing(codperso)
    duplicates drop conglome vivienda hogar codperso, force
    save "datos crudos/enaho01b-2012-1_clean.dta", replace
}

capture confirm file "datos crudos/enaho01b-2012-2.dta"
if _rc == 0 {
    use "datos crudos/enaho01b-2012-2.dta", clear

    * --- Armonizacion de nombres (Typos INEI) ---
    capture rename p713b12 p713b
    capture rename p713d12 p713d
    capture rename p713e12 p713e
    capture rename factor_07 factor07
    * --------------------------------------------

    * --- Estandarizacion extrema de llaves (Anti-Ceros y Espacios) ---
    foreach var in conglome vivienda hogar codperso codinfor { 
        capture confirm variable `var'
        if _rc == 0 {
            capture tostring `var', replace force
            capture replace `var' = trim(`var')
            capture destring `var', replace force
        }
    }
    * -----------------------------------------------------------------

    * --- Ahorro de Memoria: Borrado Quirúrgico ---
    capture drop año
    capture drop a?o
    capture drop mes
    capture drop nconglome
    capture drop ubigeo
    capture drop dominio
    capture drop estrato
    capture drop periodo
    capture drop codinfor
    capture drop factor*
    capture drop factora*
    * ---------------------------------------------
    drop if missing(conglome) | missing(vivienda) | missing(hogar) | missing(codperso)
    duplicates drop conglome vivienda hogar codperso, force
    save "datos crudos/enaho01b-2012-2_clean.dta", replace
}

capture confirm file "datos crudos/enaho01b-2012-3.dta"
if _rc == 0 {
    use "datos crudos/enaho01b-2012-3.dta", clear

    * --- Armonizacion de nombres (Typos INEI) ---
    capture rename p713b12 p713b
    capture rename p713d12 p713d
    capture rename p713e12 p713e
    capture rename factor_07 factor07
    * --------------------------------------------

    * --- Estandarizacion extrema de llaves (Anti-Ceros y Espacios) ---
    foreach var in conglome vivienda hogar codperso codinfor { 
        capture confirm variable `var'
        if _rc == 0 {
            capture tostring `var', replace force
            capture replace `var' = trim(`var')
            capture destring `var', replace force
        }
    }
    * -----------------------------------------------------------------

    * --- Ahorro de Memoria: Borrado Quirúrgico ---
    capture drop año
    capture drop a?o
    capture drop mes
    capture drop nconglome
    capture drop ubigeo
    capture drop dominio
    capture drop estrato
    capture drop periodo
    capture drop codinfor
    capture drop factor*
    capture drop factora*
    * ---------------------------------------------
    drop if missing(conglome) | missing(vivienda) | missing(hogar) | missing(codperso)
    duplicates drop conglome vivienda hogar codperso, force
    save "datos crudos/enaho01b-2012-3_clean.dta", replace
}

capture confirm file "datos crudos/enaho01-2012-700a.dta"
if _rc == 0 {
    use "datos crudos/enaho01-2012-700a.dta", clear

    * --- Armonizacion de nombres (Typos INEI) ---
    capture rename p713b12 p713b
    capture rename p713d12 p713d
    capture rename p713e12 p713e
    capture rename factor_07 factor07
    * --------------------------------------------
    capture rename p702 codperso
    capture tostring codperso, replace force
    capture tostring codinfor, replace force
    capture replace codperso = trim(codperso)
    capture replace codinfor = trim(codinfor)
    capture replace codperso = codinfor if codperso == "" | codperso == "."

    * --- Estandarizacion extrema de llaves (Anti-Ceros y Espacios) ---
    foreach var in conglome vivienda hogar codperso codinfor { 
        capture confirm variable `var'
        if _rc == 0 {
            capture tostring `var', replace force
            capture replace `var' = trim(`var')
            capture destring `var', replace force
        }
    }
    * -----------------------------------------------------------------
    gen programa_social1 = 0
    replace programa_social1 = 1 if inlist(p703,1,2,3,4,5,6,7,8,10)
    drop if missing(conglome) | missing(vivienda) | missing(hogar) | missing(codperso)
    duplicates drop conglome vivienda hogar codperso p703, force
    bysort conglome vivienda hogar codperso: gen num_item = _n
    tostring num_item, generate(j_str)
    replace j_str = "_" + j_str
    drop num_item

    * --- Ahorro de Memoria: Borrado Quirúrgico ---
    capture drop año
    capture drop a?o
    capture drop mes
    capture drop nconglome
    capture drop ubigeo
    capture drop dominio
    capture drop estrato
    capture drop periodo
    capture drop codinfor
    capture drop factor*
    capture drop factora*
    * ---------------------------------------------
    ds conglome vivienda hogar codperso j_str, not
    local vars `r(varlist)'
    foreach v of local vars {
        rename `v' v_`v'
    }
    ds conglome vivienda hogar codperso j_str, not
    local vars_wide `r(varlist)'
    reshape wide `vars_wide', i(conglome vivienda hogar codperso) j(j_str) string
    duplicates drop conglome vivienda hogar codperso, force
    save "datos crudos/enaho01-2012-700a_wide.dta", replace
}

capture confirm file "datos crudos/enaho01-2012-700b.dta"
if _rc == 0 {
    use "datos crudos/enaho01-2012-700b.dta", clear

    * --- Armonizacion de nombres (Typos INEI) ---
    capture rename p713b12 p713b
    capture rename p713d12 p713d
    capture rename p713e12 p713e
    capture rename factor_07 factor07
    * --------------------------------------------
    capture rename p711n codperso
    capture tostring codperso, replace force
    capture tostring codinfor, replace force
    capture replace codperso = trim(codperso)
    capture replace codinfor = trim(codinfor)
    capture replace codperso = codinfor if codperso == "" | codperso == "."

    * --- Estandarizacion extrema de llaves (Anti-Ceros y Espacios) ---
    foreach var in conglome vivienda hogar codperso codinfor { 
        capture confirm variable `var'
        if _rc == 0 {
            capture tostring `var', replace force
            capture replace `var' = trim(`var')
            capture destring `var', replace force
        }
    }
    * -----------------------------------------------------------------
    gen programa_social2 = 0
    replace programa_social2 = 1 if inlist(p712,1,2,3,4,5,6,7,8,9,10,11,12,13,15,16,17,18,19,29,30)
    capture gen periodo_prog12 = p713d - p713b
    drop if missing(conglome) | missing(vivienda) | missing(hogar) | missing(codperso)
    duplicates drop conglome vivienda hogar codperso p712, force
    bysort conglome vivienda hogar codperso: gen num_item = _n
    tostring num_item, generate(j_str)
    replace j_str = "_" + j_str
    drop num_item

    * --- Ahorro de Memoria: Borrado Quirúrgico ---
    capture drop año
    capture drop a?o
    capture drop mes
    capture drop nconglome
    capture drop ubigeo
    capture drop dominio
    capture drop estrato
    capture drop periodo
    capture drop codinfor
    capture drop factor*
    capture drop factora*
    * ---------------------------------------------
    ds conglome vivienda hogar codperso j_str, not
    local vars `r(varlist)'
    foreach v of local vars {
        rename `v' v_`v'
    }
    ds conglome vivienda hogar codperso j_str, not
    local vars_wide `r(varlist)'
    reshape wide `vars_wide', i(conglome vivienda hogar codperso) j(j_str) string
    duplicates drop conglome vivienda hogar codperso, force
    save "datos crudos/enaho01-2012-700b_wide.dta", replace
}

capture confirm file "datos crudos/enaho02-2012-2000a.dta"
if _rc == 0 {
    use "datos crudos/enaho02-2012-2000a.dta", clear

    * --- Armonizacion de nombres (Typos INEI) ---
    capture rename p713b12 p713b
    capture rename p713d12 p713d
    capture rename p713e12 p713e
    capture rename factor_07 factor07
    * --------------------------------------------

    * --- Estandarizacion extrema de llaves (Anti-Ceros y Espacios) ---
    foreach var in conglome vivienda hogar codperso codinfor { 
        capture confirm variable `var'
        if _rc == 0 {
            capture tostring `var', replace force
            capture replace `var' = trim(`var')
            capture destring `var', replace force
        }
    }
    * -----------------------------------------------------------------
    drop if missing(conglome) | missing(vivienda) | missing(hogar) | missing(codperso)
    duplicates drop
    bysort conglome vivienda hogar codperso: gen num_parcela = _n
    tostring num_parcela, generate(j_str)
    replace j_str = "_" + j_str
    drop num_parcela

    * --- Ahorro de Memoria: Borrado Quirúrgico ---
    capture drop año
    capture drop a?o
    capture drop mes
    capture drop nconglome
    capture drop ubigeo
    capture drop dominio
    capture drop estrato
    capture drop periodo
    capture drop codinfor
    capture drop factor*
    capture drop factora*
    * ---------------------------------------------
    ds conglome vivienda hogar codperso j_str, not
    local vars `r(varlist)'
    foreach v of local vars {
        rename `v' v_`v'
    }
    ds conglome vivienda hogar codperso j_str, not
    local vars_wide `r(varlist)'
    reshape wide `vars_wide', i(conglome vivienda hogar codperso) j(j_str) string
    duplicates drop conglome vivienda hogar codperso, force
    save "datos crudos/enaho02-2012-2000a_wide.dta", replace
}

capture confirm file "datos crudos/enaho02-2012-2100.dta"
if _rc == 0 {
    use "datos crudos/enaho02-2012-2100.dta", clear

    * --- Armonizacion de nombres (Typos INEI) ---
    capture rename p713b12 p713b
    capture rename p713d12 p713d
    capture rename p713e12 p713e
    capture rename factor_07 factor07
    * --------------------------------------------

    * --- Estandarizacion extrema de llaves (Anti-Ceros y Espacios) ---
    foreach var in conglome vivienda hogar codperso codinfor { 
        capture confirm variable `var'
        if _rc == 0 {
            capture tostring `var', replace force
            capture replace `var' = trim(`var')
            capture destring `var', replace force
        }
    }
    * -----------------------------------------------------------------
    drop if missing(conglome) | missing(vivienda) | missing(hogar) | missing(codperso)
    duplicates drop
    bysort conglome vivienda hogar codperso: gen num_cultivo = _n
    tostring num_cultivo, generate(j_str)
    replace j_str = "_" + j_str
    drop num_cultivo

    * --- Ahorro de Memoria: Borrado Quirúrgico ---
    capture drop año
    capture drop a?o
    capture drop mes
    capture drop nconglome
    capture drop ubigeo
    capture drop dominio
    capture drop estrato
    capture drop periodo
    capture drop codinfor
    capture drop factor*
    capture drop factora*
    * ---------------------------------------------
    ds conglome vivienda hogar codperso j_str, not
    local vars `r(varlist)'
    foreach v of local vars {
        rename `v' v_`v'
    }
    ds conglome vivienda hogar codperso j_str, not
    local vars_wide `r(varlist)'
    reshape wide `vars_wide', i(conglome vivienda hogar codperso) j(j_str) string
    duplicates drop conglome vivienda hogar codperso, force
    save "datos crudos/enaho02-2012-2100_wide.dta", replace
}

capture confirm file "datos crudos/enaho02-2012-2200.dta"
if _rc == 0 {
    use "datos crudos/enaho02-2012-2200.dta", clear

    * --- Armonizacion de nombres (Typos INEI) ---
    capture rename p713b12 p713b
    capture rename p713d12 p713d
    capture rename p713e12 p713e
    capture rename factor_07 factor07
    * --------------------------------------------

    * --- Estandarizacion extrema de llaves (Anti-Ceros y Espacios) ---
    foreach var in conglome vivienda hogar codperso codinfor { 
        capture confirm variable `var'
        if _rc == 0 {
            capture tostring `var', replace force
            capture replace `var' = trim(`var')
            capture destring `var', replace force
        }
    }
    * -----------------------------------------------------------------
    drop if missing(conglome) | missing(vivienda) | missing(hogar) | missing(codperso)
    duplicates drop
    bysort conglome vivienda hogar codperso: gen num_subprod_agri = _n
    tostring num_subprod_agri, generate(j_str)
    replace j_str = "_" + j_str
    drop num_subprod_agri

    * --- Ahorro de Memoria: Borrado Quirúrgico ---
    capture drop año
    capture drop a?o
    capture drop mes
    capture drop nconglome
    capture drop ubigeo
    capture drop dominio
    capture drop estrato
    capture drop periodo
    capture drop codinfor
    capture drop factor*
    capture drop factora*
    * ---------------------------------------------
    ds conglome vivienda hogar codperso j_str, not
    local vars `r(varlist)'
    foreach v of local vars {
        rename `v' v_`v'
    }
    ds conglome vivienda hogar codperso j_str, not
    local vars_wide `r(varlist)'
    reshape wide `vars_wide', i(conglome vivienda hogar codperso) j(j_str) string
    duplicates drop conglome vivienda hogar codperso, force
    save "datos crudos/enaho02-2012-2200_wide.dta", replace
}

capture confirm file "datos crudos/enaho02-2012-2300.dta"
if _rc == 0 {
    use "datos crudos/enaho02-2012-2300.dta", clear

    * --- Armonizacion de nombres (Typos INEI) ---
    capture rename p713b12 p713b
    capture rename p713d12 p713d
    capture rename p713e12 p713e
    capture rename factor_07 factor07
    * --------------------------------------------

    * --- Estandarizacion extrema de llaves (Anti-Ceros y Espacios) ---
    foreach var in conglome vivienda hogar codperso codinfor { 
        capture confirm variable `var'
        if _rc == 0 {
            capture tostring `var', replace force
            capture replace `var' = trim(`var')
            capture destring `var', replace force
        }
    }
    * -----------------------------------------------------------------
    drop if missing(conglome) | missing(vivienda) | missing(hogar) | missing(codperso)
    duplicates drop
    bysort conglome vivienda hogar codperso: gen num_forestal = _n
    tostring num_forestal, generate(j_str)
    replace j_str = "_" + j_str
    drop num_forestal

    * --- Ahorro de Memoria: Borrado Quirúrgico ---
    capture drop año
    capture drop a?o
    capture drop mes
    capture drop nconglome
    capture drop ubigeo
    capture drop dominio
    capture drop estrato
    capture drop periodo
    capture drop codinfor
    capture drop factor*
    capture drop factora*
    * ---------------------------------------------
    ds conglome vivienda hogar codperso j_str, not
    local vars `r(varlist)'
    foreach v of local vars {
        rename `v' v_`v'
    }
    ds conglome vivienda hogar codperso j_str, not
    local vars_wide `r(varlist)'
    reshape wide `vars_wide', i(conglome vivienda hogar codperso) j(j_str) string
    duplicates drop conglome vivienda hogar codperso, force
    save "datos crudos/enaho02-2012-2300_wide.dta", replace
}

capture confirm file "datos crudos/enaho02-2012-2500.dta"
if _rc == 0 {
    use "datos crudos/enaho02-2012-2500.dta", clear

    * --- Armonizacion de nombres (Typos INEI) ---
    capture rename p713b12 p713b
    capture rename p713d12 p713d
    capture rename p713e12 p713e
    capture rename factor_07 factor07
    * --------------------------------------------

    * --- Estandarizacion extrema de llaves (Anti-Ceros y Espacios) ---
    foreach var in conglome vivienda hogar codperso codinfor { 
        capture confirm variable `var'
        if _rc == 0 {
            capture tostring `var', replace force
            capture replace `var' = trim(`var')
            capture destring `var', replace force
        }
    }
    * -----------------------------------------------------------------
    drop if missing(conglome) | missing(vivienda) | missing(hogar) | missing(codperso)
    duplicates drop
    bysort conglome vivienda hogar codperso: gen num_pecuario = _n
    tostring num_pecuario, generate(j_str)
    replace j_str = "_" + j_str
    drop num_pecuario

    * --- Ahorro de Memoria: Borrado Quirúrgico ---
    capture drop año
    capture drop a?o
    capture drop mes
    capture drop nconglome
    capture drop ubigeo
    capture drop dominio
    capture drop estrato
    capture drop periodo
    capture drop codinfor
    capture drop factor*
    capture drop factora*
    * ---------------------------------------------
    ds conglome vivienda hogar codperso j_str, not
    local vars `r(varlist)'
    foreach v of local vars {
        rename `v' v_`v'
    }
    ds conglome vivienda hogar codperso j_str, not
    local vars_wide `r(varlist)'
    reshape wide `vars_wide', i(conglome vivienda hogar codperso) j(j_str) string
    duplicates drop conglome vivienda hogar codperso, force
    save "datos crudos/enaho02-2012-2500_wide.dta", replace
}

capture confirm file "datos crudos/enaho02-2012-2600.dta"
if _rc == 0 {
    use "datos crudos/enaho02-2012-2600.dta", clear

    * --- Armonizacion de nombres (Typos INEI) ---
    capture rename p713b12 p713b
    capture rename p713d12 p713d
    capture rename p713e12 p713e
    capture rename factor_07 factor07
    * --------------------------------------------

    * --- Estandarizacion extrema de llaves (Anti-Ceros y Espacios) ---
    foreach var in conglome vivienda hogar codperso codinfor { 
        capture confirm variable `var'
        if _rc == 0 {
            capture tostring `var', replace force
            capture replace `var' = trim(`var')
            capture destring `var', replace force
        }
    }
    * -----------------------------------------------------------------
    drop if missing(conglome) | missing(vivienda) | missing(hogar) | missing(codperso)
    duplicates drop
    bysort conglome vivienda hogar codperso: gen num_subprod_pec = _n
    tostring num_subprod_pec, generate(j_str)
    replace j_str = "_" + j_str
    drop num_subprod_pec

    * --- Ahorro de Memoria: Borrado Quirúrgico ---
    capture drop año
    capture drop a?o
    capture drop mes
    capture drop nconglome
    capture drop ubigeo
    capture drop dominio
    capture drop estrato
    capture drop periodo
    capture drop codinfor
    capture drop factor*
    capture drop factora*
    * ---------------------------------------------
    ds conglome vivienda hogar codperso j_str, not
    local vars `r(varlist)'
    foreach v of local vars {
        rename `v' v_`v'
    }
    ds conglome vivienda hogar codperso j_str, not
    local vars_wide `r(varlist)'
    reshape wide `vars_wide', i(conglome vivienda hogar codperso) j(j_str) string
    duplicates drop conglome vivienda hogar codperso, force
    save "datos crudos/enaho02-2012-2600_wide.dta", replace
}

capture confirm file "datos crudos/enaho02-2012-2000.dta"
if _rc == 0 {
    use "datos crudos/enaho02-2012-2000.dta", clear

    * --- Armonizacion de nombres (Typos INEI) ---
    capture rename p713b12 p713b
    capture rename p713d12 p713d
    capture rename p713e12 p713e
    capture rename factor_07 factor07
    * --------------------------------------------

    * --- Estandarizacion extrema de llaves (Anti-Ceros y Espacios) ---
    foreach var in conglome vivienda hogar codperso codinfor { 
        capture confirm variable `var'
        if _rc == 0 {
            capture tostring `var', replace force
            capture replace `var' = trim(`var')
            capture destring `var', replace force
        }
    }
    * -----------------------------------------------------------------

    * --- Ahorro de Memoria: Borrado Quirúrgico ---
    capture drop año
    capture drop a?o
    capture drop mes
    capture drop nconglome
    capture drop ubigeo
    capture drop dominio
    capture drop estrato
    capture drop periodo
    capture drop codinfor
    capture drop factor*
    capture drop factora*
    * ---------------------------------------------
    drop if missing(conglome) | missing(vivienda) | missing(hogar) | missing(codperso)
    duplicates drop conglome vivienda hogar codperso, force
    save "datos crudos/enaho02-2012-2000_clean.dta", replace
}

capture confirm file "datos crudos/enaho02-2012-2400.dta"
if _rc == 0 {
    use "datos crudos/enaho02-2012-2400.dta", clear

    * --- Armonizacion de nombres (Typos INEI) ---
    capture rename p713b12 p713b
    capture rename p713d12 p713d
    capture rename p713e12 p713e
    capture rename factor_07 factor07
    * --------------------------------------------

    * --- Estandarizacion extrema de llaves (Anti-Ceros y Espacios) ---
    foreach var in conglome vivienda hogar codperso codinfor { 
        capture confirm variable `var'
        if _rc == 0 {
            capture tostring `var', replace force
            capture replace `var' = trim(`var')
            capture destring `var', replace force
        }
    }
    * -----------------------------------------------------------------

    * --- Ahorro de Memoria: Borrado Quirúrgico ---
    capture drop año
    capture drop a?o
    capture drop mes
    capture drop nconglome
    capture drop ubigeo
    capture drop dominio
    capture drop estrato
    capture drop periodo
    capture drop codinfor
    capture drop factor*
    capture drop factora*
    * ---------------------------------------------
    drop if missing(conglome) | missing(vivienda) | missing(hogar) | missing(codperso)
    duplicates drop conglome vivienda hogar codperso, force
    save "datos crudos/enaho02-2012-2400_clean.dta", replace
}

capture confirm file "datos crudos/enaho02-2012-2700.dta"
if _rc == 0 {
    use "datos crudos/enaho02-2012-2700.dta", clear

    * --- Armonizacion de nombres (Typos INEI) ---
    capture rename p713b12 p713b
    capture rename p713d12 p713d
    capture rename p713e12 p713e
    capture rename factor_07 factor07
    * --------------------------------------------

    * --- Estandarizacion extrema de llaves (Anti-Ceros y Espacios) ---
    foreach var in conglome vivienda hogar codperso codinfor { 
        capture confirm variable `var'
        if _rc == 0 {
            capture tostring `var', replace force
            capture replace `var' = trim(`var')
            capture destring `var', replace force
        }
    }
    * -----------------------------------------------------------------

    * --- Ahorro de Memoria: Borrado Quirúrgico ---
    capture drop año
    capture drop a?o
    capture drop mes
    capture drop nconglome
    capture drop ubigeo
    capture drop dominio
    capture drop estrato
    capture drop periodo
    capture drop codinfor
    capture drop factor*
    capture drop factora*
    * ---------------------------------------------
    drop if missing(conglome) | missing(vivienda) | missing(hogar) | missing(codperso)
    duplicates drop conglome vivienda hogar codperso, force
    save "datos crudos/enaho02-2012-2700_clean.dta", replace
}

use "datos crudos/enaho01-2012-200.dta", clear

    * --- Estandarizacion extrema de llaves (Anti-Ceros y Espacios) ---
    foreach var in conglome vivienda hogar codperso codinfor { 
        capture confirm variable `var'
        if _rc == 0 {
            capture tostring `var', replace force
            capture replace `var' = trim(`var')
            capture destring `var', replace force
        }
    }
    * -----------------------------------------------------------------
drop if missing(conglome) | missing(vivienda) | missing(hogar) | missing(codperso)
duplicates drop conglome vivienda hogar codperso, force

capture confirm file "datos crudos/enaho01a-2012-300_clean.dta"
if _rc == 0 {
    merge 1:1 conglome vivienda hogar codperso using "datos crudos/enaho01a-2012-300_clean.dta", force
    drop if _merge == 2
    drop _merge
}
capture confirm file "datos crudos/enaho01a-2012-400_clean.dta"
if _rc == 0 {
    merge 1:1 conglome vivienda hogar codperso using "datos crudos/enaho01a-2012-400_clean.dta", force
    drop if _merge == 2
    drop _merge
}
capture confirm file "datos crudos/enaho01a-2012-500_clean.dta"
if _rc == 0 {
    merge 1:1 conglome vivienda hogar codperso using "datos crudos/enaho01a-2012-500_clean.dta", force
    drop if _merge == 2
    drop _merge
}
capture confirm file "datos crudos/enaho01b-2012-1_clean.dta"
if _rc == 0 {
    merge 1:1 conglome vivienda hogar codperso using "datos crudos/enaho01b-2012-1_clean.dta", force
    drop if _merge == 2
    drop _merge
}
capture confirm file "datos crudos/enaho01b-2012-2_clean.dta"
if _rc == 0 {
    merge 1:1 conglome vivienda hogar codperso using "datos crudos/enaho01b-2012-2_clean.dta", force
    drop if _merge == 2
    drop _merge
}
capture confirm file "datos crudos/enaho01b-2012-3_clean.dta"
if _rc == 0 {
    merge 1:1 conglome vivienda hogar codperso using "datos crudos/enaho01b-2012-3_clean.dta", force
    drop if _merge == 2
    drop _merge
}
capture confirm file "datos crudos/enaho01-2012-700a_wide.dta"
if _rc == 0 {
    merge 1:1 conglome vivienda hogar codperso using "datos crudos/enaho01-2012-700a_wide.dta", force
    drop if _merge == 2
    drop _merge
}
capture confirm file "datos crudos/enaho01-2012-700b_wide.dta"
if _rc == 0 {
    merge 1:1 conglome vivienda hogar codperso using "datos crudos/enaho01-2012-700b_wide.dta", force
    drop if _merge == 2
    drop _merge
}
capture confirm file "datos crudos/enaho02-2012-2000_clean.dta"
if _rc == 0 {
    merge 1:1 conglome vivienda hogar codperso using "datos crudos/enaho02-2012-2000_clean.dta", force
    drop if _merge == 2
    drop _merge
}
capture confirm file "datos crudos/enaho02-2012-2000a_wide.dta"
if _rc == 0 {
    merge 1:1 conglome vivienda hogar codperso using "datos crudos/enaho02-2012-2000a_wide.dta", force
    drop if _merge == 2
    drop _merge
}
capture confirm file "datos crudos/enaho02-2012-2100_wide.dta"
if _rc == 0 {
    merge 1:1 conglome vivienda hogar codperso using "datos crudos/enaho02-2012-2100_wide.dta", force
    drop if _merge == 2
    drop _merge
}
capture confirm file "datos crudos/enaho02-2012-2200_wide.dta"
if _rc == 0 {
    merge 1:1 conglome vivienda hogar codperso using "datos crudos/enaho02-2012-2200_wide.dta", force
    drop if _merge == 2
    drop _merge
}
capture confirm file "datos crudos/enaho02-2012-2300_wide.dta"
if _rc == 0 {
    merge 1:1 conglome vivienda hogar codperso using "datos crudos/enaho02-2012-2300_wide.dta", force
    drop if _merge == 2
    drop _merge
}
capture confirm file "datos crudos/enaho02-2012-2400_clean.dta"
if _rc == 0 {
    merge 1:1 conglome vivienda hogar codperso using "datos crudos/enaho02-2012-2400_clean.dta", force
    drop if _merge == 2
    drop _merge
}
capture confirm file "datos crudos/enaho02-2012-2500_wide.dta"
if _rc == 0 {
    merge 1:1 conglome vivienda hogar codperso using "datos crudos/enaho02-2012-2500_wide.dta", force
    drop if _merge == 2
    drop _merge
}
capture confirm file "datos crudos/enaho02-2012-2600_wide.dta"
if _rc == 0 {
    merge 1:1 conglome vivienda hogar codperso using "datos crudos/enaho02-2012-2600_wide.dta", force
    drop if _merge == 2
    drop _merge
}
capture confirm file "datos crudos/enaho02-2012-2700_clean.dta"
if _rc == 0 {
    merge 1:1 conglome vivienda hogar codperso using "datos crudos/enaho02-2012-2700_clean.dta", force
    drop if _merge == 2
    drop _merge
}
save "datos crudos/temp_personas_2012.dta", replace

use "datos crudos/temp_personas_2012.dta", clear
capture confirm file "datos crudos/enaho01-2012-100_clean.dta"
if _rc == 0 {
    merge m:1 conglome vivienda hogar using "datos crudos/enaho01-2012-100_clean.dta", force
    drop if _merge == 2
    drop _merge
}
capture confirm file "datos crudos/enaho01-2012-700_clean.dta"
if _rc == 0 {
    merge m:1 conglome vivienda hogar using "datos crudos/enaho01-2012-700_clean.dta", force
    drop if _merge == 2
    drop _merge
}
capture confirm file "datos crudos/sumaria-2012_clean.dta"
if _rc == 0 {
    merge m:1 conglome vivienda hogar using "datos crudos/sumaria-2012_clean.dta", force
    drop if _merge == 2
    drop _merge
}
save "datos crudos/2012.dta", replace

use "datos crudos/2012.dta", clear
rename conglome con_12
rename vivienda viv_12
rename hogar hog_12
save "datos crudos/2012n.dta", replace

use "datos crudos/enaho01_2012_2016_100_panel.dta", clear
    * --- Armonizar llaves maestras del Panel Antiguo ---
    capture rename cenl numpanh
    capture rename num_hog numpanh
    * -----------------------------------------------------------
    * --- Armonizar nombres mutantes del Panel ---
    capture rename factor_07_12 factor07_12
    capture rename factor07_12_12 factor07_12
    capture rename factor07_12a factor07_12
    capture rename facpanel* fac_panel*
    * -----------------------------------------------------------
    * --- KEEP SEGURO (Evita error 111 si faltan variables) ---
    local keep_vars numpanh mes_12 conglome_12 vivienda_12 hogar_12 ubigeo_12 dominio_12 estrato_12 factor07_12
    foreach v in p101_12 p105a_12 tipenc_12 fecent_12 result_12 panel_12 periodo_12 {
        capture confirm variable `v'
        if _rc == 0 {
            local keep_vars `keep_vars' `v'
        }
    }
    foreach prefix in hpan hpanel fac_panel facpanel {
        capture ds `prefix'*
        if _rc == 0 {
            local keep_vars `keep_vars' `r(varlist)'
        }
    }
    local keep_vars: list uniq keep_vars
    keep `keep_vars'
    * -----------------------------------------------------------
rename conglome_12 con_12
rename vivienda_12 viv_12
rename hogar_12 hog_12
    * --- Estandarizacion extrema del Panel ---
    foreach var in con_12 viv_12 hog_12 numpanh {
        capture confirm variable `var'
        if _rc == 0 {
            capture tostring `var', replace force
            capture replace `var' = trim(`var')
            capture destring `var', replace force
        }
    }
capture destring mes_12, replace force
keep if inrange(mes_12, 1, 12)
drop if missing(con_12) | missing(viv_12) | missing(hog_12)
duplicates drop con_12 viv_12 hog_12, force
gen ID = 2012
merge 1:m con_12 viv_12 hog_12 using "datos crudos/2012n.dta", force
drop if _merge == 1
drop _merge
rename con_12 conglome
rename viv_12 vivienda
rename hog_12 hogar
save "resultados/2012_enahop.dta", replace

**************************************************
* PROCESANDO AÑO 2013
**************************************************

capture confirm file "datos crudos/enaho01-2013-100.dta"
if _rc == 0 {
    use "datos crudos/enaho01-2013-100.dta", clear

    * --- Armonizacion de nombres (Typos INEI) ---
    capture rename p713b13 p713b
    capture rename p713d13 p713d
    capture rename p713e13 p713e
    capture rename factor_07 factor07
    * --------------------------------------------

    * --- Estandarizacion extrema de llaves (Anti-Ceros y Espacios) ---
    foreach var in conglome vivienda hogar codperso codinfor { 
        capture confirm variable `var'
        if _rc == 0 {
            capture tostring `var', replace force
            capture replace `var' = trim(`var')
            capture destring `var', replace force
        }
    }
    * -----------------------------------------------------------------

    * --- Ahorro de Memoria: Borrado Quirúrgico ---
    capture drop año
    capture drop a?o
    capture drop mes
    capture drop nconglome
    capture drop ubigeo
    capture drop dominio
    capture drop estrato
    capture drop periodo
    capture drop codinfor
    capture drop factor*
    capture drop factora*
    * ---------------------------------------------
    drop if missing(conglome) | missing(vivienda) | missing(hogar)
    duplicates drop conglome vivienda hogar, force
    save "datos crudos/enaho01-2013-100_clean.dta", replace
}

capture confirm file "datos crudos/enaho01-2013-700.dta"
if _rc == 0 {
    use "datos crudos/enaho01-2013-700.dta", clear

    * --- Armonizacion de nombres (Typos INEI) ---
    capture rename p713b13 p713b
    capture rename p713d13 p713d
    capture rename p713e13 p713e
    capture rename factor_07 factor07
    * --------------------------------------------

    * --- Estandarizacion extrema de llaves (Anti-Ceros y Espacios) ---
    foreach var in conglome vivienda hogar codperso codinfor { 
        capture confirm variable `var'
        if _rc == 0 {
            capture tostring `var', replace force
            capture replace `var' = trim(`var')
            capture destring `var', replace force
        }
    }
    * -----------------------------------------------------------------

    * --- Ahorro de Memoria: Borrado Quirúrgico ---
    capture drop año
    capture drop a?o
    capture drop mes
    capture drop nconglome
    capture drop ubigeo
    capture drop dominio
    capture drop estrato
    capture drop periodo
    capture drop codinfor
    capture drop factor*
    capture drop factora*
    * ---------------------------------------------
    drop if missing(conglome) | missing(vivienda) | missing(hogar)
    duplicates drop conglome vivienda hogar, force
    save "datos crudos/enaho01-2013-700_clean.dta", replace
}

capture confirm file "datos crudos/sumaria-2013.dta"
if _rc == 0 {
    use "datos crudos/sumaria-2013.dta", clear

    * --- Armonizacion de nombres (Typos INEI) ---
    capture rename p713b13 p713b
    capture rename p713d13 p713d
    capture rename p713e13 p713e
    capture rename factor_07 factor07
    * --------------------------------------------

    * --- Estandarizacion extrema de llaves (Anti-Ceros y Espacios) ---
    foreach var in conglome vivienda hogar codperso codinfor { 
        capture confirm variable `var'
        if _rc == 0 {
            capture tostring `var', replace force
            capture replace `var' = trim(`var')
            capture destring `var', replace force
        }
    }
    * -----------------------------------------------------------------

    * --- Ahorro de Memoria: Borrado Quirúrgico ---
    capture drop año
    capture drop a?o
    capture drop mes
    capture drop nconglome
    capture drop ubigeo
    capture drop dominio
    capture drop estrato
    capture drop periodo
    capture drop codinfor
    capture drop factor*
    capture drop factora*
    * ---------------------------------------------
    drop if missing(conglome) | missing(vivienda) | missing(hogar)
    duplicates drop conglome vivienda hogar, force
    save "datos crudos/sumaria-2013_clean.dta", replace
}

capture confirm file "datos crudos/enaho01a-2013-300.dta"
if _rc == 0 {
    use "datos crudos/enaho01a-2013-300.dta", clear

    * --- Armonizacion de nombres (Typos INEI) ---
    capture rename p713b13 p713b
    capture rename p713d13 p713d
    capture rename p713e13 p713e
    capture rename factor_07 factor07
    * --------------------------------------------

    * --- Estandarizacion extrema de llaves (Anti-Ceros y Espacios) ---
    foreach var in conglome vivienda hogar codperso codinfor { 
        capture confirm variable `var'
        if _rc == 0 {
            capture tostring `var', replace force
            capture replace `var' = trim(`var')
            capture destring `var', replace force
        }
    }
    * -----------------------------------------------------------------

    * --- Ahorro de Memoria: Borrado Quirúrgico ---
    capture drop año
    capture drop a?o
    capture drop mes
    capture drop nconglome
    capture drop ubigeo
    capture drop dominio
    capture drop estrato
    capture drop periodo
    capture drop codinfor
    capture drop factor*
    capture drop factora*
    * ---------------------------------------------
    drop if missing(conglome) | missing(vivienda) | missing(hogar) | missing(codperso)
    duplicates drop conglome vivienda hogar codperso, force
    save "datos crudos/enaho01a-2013-300_clean.dta", replace
}

capture confirm file "datos crudos/enaho01a-2013-400.dta"
if _rc == 0 {
    use "datos crudos/enaho01a-2013-400.dta", clear

    * --- Armonizacion de nombres (Typos INEI) ---
    capture rename p713b13 p713b
    capture rename p713d13 p713d
    capture rename p713e13 p713e
    capture rename factor_07 factor07
    * --------------------------------------------

    * --- Estandarizacion extrema de llaves (Anti-Ceros y Espacios) ---
    foreach var in conglome vivienda hogar codperso codinfor { 
        capture confirm variable `var'
        if _rc == 0 {
            capture tostring `var', replace force
            capture replace `var' = trim(`var')
            capture destring `var', replace force
        }
    }
    * -----------------------------------------------------------------

    * --- Ahorro de Memoria: Borrado Quirúrgico ---
    capture drop año
    capture drop a?o
    capture drop mes
    capture drop nconglome
    capture drop ubigeo
    capture drop dominio
    capture drop estrato
    capture drop periodo
    capture drop codinfor
    capture drop factor*
    capture drop factora*
    * ---------------------------------------------
    drop if missing(conglome) | missing(vivienda) | missing(hogar) | missing(codperso)
    duplicates drop conglome vivienda hogar codperso, force
    save "datos crudos/enaho01a-2013-400_clean.dta", replace
}

capture confirm file "datos crudos/enaho01a-2013-500.dta"
if _rc == 0 {
    use "datos crudos/enaho01a-2013-500.dta", clear

    * --- Armonizacion de nombres (Typos INEI) ---
    capture rename p713b13 p713b
    capture rename p713d13 p713d
    capture rename p713e13 p713e
    capture rename factor_07 factor07
    * --------------------------------------------

    * --- Estandarizacion extrema de llaves (Anti-Ceros y Espacios) ---
    foreach var in conglome vivienda hogar codperso codinfor { 
        capture confirm variable `var'
        if _rc == 0 {
            capture tostring `var', replace force
            capture replace `var' = trim(`var')
            capture destring `var', replace force
        }
    }
    * -----------------------------------------------------------------

    * --- Ahorro de Memoria: Borrado Quirúrgico ---
    capture drop año
    capture drop a?o
    capture drop mes
    capture drop nconglome
    capture drop ubigeo
    capture drop dominio
    capture drop estrato
    capture drop periodo
    capture drop codinfor
    capture drop factor*
    capture drop factora*
    * ---------------------------------------------
    drop if missing(conglome) | missing(vivienda) | missing(hogar) | missing(codperso)
    duplicates drop conglome vivienda hogar codperso, force
    save "datos crudos/enaho01a-2013-500_clean.dta", replace
}

capture confirm file "datos crudos/enaho01b-2013-1.dta"
if _rc == 0 {
    use "datos crudos/enaho01b-2013-1.dta", clear

    * --- Armonizacion de nombres (Typos INEI) ---
    capture rename p713b13 p713b
    capture rename p713d13 p713d
    capture rename p713e13 p713e
    capture rename factor_07 factor07
    * --------------------------------------------

    * --- Estandarizacion extrema de llaves (Anti-Ceros y Espacios) ---
    foreach var in conglome vivienda hogar codperso codinfor { 
        capture confirm variable `var'
        if _rc == 0 {
            capture tostring `var', replace force
            capture replace `var' = trim(`var')
            capture destring `var', replace force
        }
    }
    * -----------------------------------------------------------------

    * --- Ahorro de Memoria: Borrado Quirúrgico ---
    capture drop año
    capture drop a?o
    capture drop mes
    capture drop nconglome
    capture drop ubigeo
    capture drop dominio
    capture drop estrato
    capture drop periodo
    capture drop codinfor
    capture drop factor*
    capture drop factora*
    * ---------------------------------------------
    drop if missing(conglome) | missing(vivienda) | missing(hogar) | missing(codperso)
    duplicates drop conglome vivienda hogar codperso, force
    save "datos crudos/enaho01b-2013-1_clean.dta", replace
}

capture confirm file "datos crudos/enaho01b-2013-2.dta"
if _rc == 0 {
    use "datos crudos/enaho01b-2013-2.dta", clear

    * --- Armonizacion de nombres (Typos INEI) ---
    capture rename p713b13 p713b
    capture rename p713d13 p713d
    capture rename p713e13 p713e
    capture rename factor_07 factor07
    * --------------------------------------------

    * --- Estandarizacion extrema de llaves (Anti-Ceros y Espacios) ---
    foreach var in conglome vivienda hogar codperso codinfor { 
        capture confirm variable `var'
        if _rc == 0 {
            capture tostring `var', replace force
            capture replace `var' = trim(`var')
            capture destring `var', replace force
        }
    }
    * -----------------------------------------------------------------

    * --- Ahorro de Memoria: Borrado Quirúrgico ---
    capture drop año
    capture drop a?o
    capture drop mes
    capture drop nconglome
    capture drop ubigeo
    capture drop dominio
    capture drop estrato
    capture drop periodo
    capture drop codinfor
    capture drop factor*
    capture drop factora*
    * ---------------------------------------------
    drop if missing(conglome) | missing(vivienda) | missing(hogar) | missing(codperso)
    duplicates drop conglome vivienda hogar codperso, force
    save "datos crudos/enaho01b-2013-2_clean.dta", replace
}

capture confirm file "datos crudos/enaho01b-2013-3.dta"
if _rc == 0 {
    use "datos crudos/enaho01b-2013-3.dta", clear

    * --- Armonizacion de nombres (Typos INEI) ---
    capture rename p713b13 p713b
    capture rename p713d13 p713d
    capture rename p713e13 p713e
    capture rename factor_07 factor07
    * --------------------------------------------

    * --- Estandarizacion extrema de llaves (Anti-Ceros y Espacios) ---
    foreach var in conglome vivienda hogar codperso codinfor { 
        capture confirm variable `var'
        if _rc == 0 {
            capture tostring `var', replace force
            capture replace `var' = trim(`var')
            capture destring `var', replace force
        }
    }
    * -----------------------------------------------------------------

    * --- Ahorro de Memoria: Borrado Quirúrgico ---
    capture drop año
    capture drop a?o
    capture drop mes
    capture drop nconglome
    capture drop ubigeo
    capture drop dominio
    capture drop estrato
    capture drop periodo
    capture drop codinfor
    capture drop factor*
    capture drop factora*
    * ---------------------------------------------
    drop if missing(conglome) | missing(vivienda) | missing(hogar) | missing(codperso)
    duplicates drop conglome vivienda hogar codperso, force
    save "datos crudos/enaho01b-2013-3_clean.dta", replace
}

capture confirm file "datos crudos/enaho01-2013-700a.dta"
if _rc == 0 {
    use "datos crudos/enaho01-2013-700a.dta", clear

    * --- Armonizacion de nombres (Typos INEI) ---
    capture rename p713b13 p713b
    capture rename p713d13 p713d
    capture rename p713e13 p713e
    capture rename factor_07 factor07
    * --------------------------------------------
    capture rename p702 codperso
    capture tostring codperso, replace force
    capture tostring codinfor, replace force
    capture replace codperso = trim(codperso)
    capture replace codinfor = trim(codinfor)
    capture replace codperso = codinfor if codperso == "" | codperso == "."

    * --- Estandarizacion extrema de llaves (Anti-Ceros y Espacios) ---
    foreach var in conglome vivienda hogar codperso codinfor { 
        capture confirm variable `var'
        if _rc == 0 {
            capture tostring `var', replace force
            capture replace `var' = trim(`var')
            capture destring `var', replace force
        }
    }
    * -----------------------------------------------------------------
    gen programa_social1 = 0
    replace programa_social1 = 1 if inlist(p703,1,2,3,4,5,6,7,8,10)
    drop if missing(conglome) | missing(vivienda) | missing(hogar) | missing(codperso)
    duplicates drop conglome vivienda hogar codperso p703, force
    bysort conglome vivienda hogar codperso: gen num_item = _n
    tostring num_item, generate(j_str)
    replace j_str = "_" + j_str
    drop num_item

    * --- Ahorro de Memoria: Borrado Quirúrgico ---
    capture drop año
    capture drop a?o
    capture drop mes
    capture drop nconglome
    capture drop ubigeo
    capture drop dominio
    capture drop estrato
    capture drop periodo
    capture drop codinfor
    capture drop factor*
    capture drop factora*
    * ---------------------------------------------
    ds conglome vivienda hogar codperso j_str, not
    local vars `r(varlist)'
    foreach v of local vars {
        rename `v' v_`v'
    }
    ds conglome vivienda hogar codperso j_str, not
    local vars_wide `r(varlist)'
    reshape wide `vars_wide', i(conglome vivienda hogar codperso) j(j_str) string
    duplicates drop conglome vivienda hogar codperso, force
    save "datos crudos/enaho01-2013-700a_wide.dta", replace
}

capture confirm file "datos crudos/enaho01-2013-700b.dta"
if _rc == 0 {
    use "datos crudos/enaho01-2013-700b.dta", clear

    * --- Armonizacion de nombres (Typos INEI) ---
    capture rename p713b13 p713b
    capture rename p713d13 p713d
    capture rename p713e13 p713e
    capture rename factor_07 factor07
    * --------------------------------------------
    capture rename p711n codperso
    capture tostring codperso, replace force
    capture tostring codinfor, replace force
    capture replace codperso = trim(codperso)
    capture replace codinfor = trim(codinfor)
    capture replace codperso = codinfor if codperso == "" | codperso == "."

    * --- Estandarizacion extrema de llaves (Anti-Ceros y Espacios) ---
    foreach var in conglome vivienda hogar codperso codinfor { 
        capture confirm variable `var'
        if _rc == 0 {
            capture tostring `var', replace force
            capture replace `var' = trim(`var')
            capture destring `var', replace force
        }
    }
    * -----------------------------------------------------------------
    gen programa_social2 = 0
    replace programa_social2 = 1 if inlist(p712,1,2,3,4,5,6,7,8,9,10,11,12,13,15,16,17,18,19,29,30)
    capture gen periodo_prog13 = p713d - p713b
    drop if missing(conglome) | missing(vivienda) | missing(hogar) | missing(codperso)
    duplicates drop conglome vivienda hogar codperso p712, force
    bysort conglome vivienda hogar codperso: gen num_item = _n
    tostring num_item, generate(j_str)
    replace j_str = "_" + j_str
    drop num_item

    * --- Ahorro de Memoria: Borrado Quirúrgico ---
    capture drop año
    capture drop a?o
    capture drop mes
    capture drop nconglome
    capture drop ubigeo
    capture drop dominio
    capture drop estrato
    capture drop periodo
    capture drop codinfor
    capture drop factor*
    capture drop factora*
    * ---------------------------------------------
    ds conglome vivienda hogar codperso j_str, not
    local vars `r(varlist)'
    foreach v of local vars {
        rename `v' v_`v'
    }
    ds conglome vivienda hogar codperso j_str, not
    local vars_wide `r(varlist)'
    reshape wide `vars_wide', i(conglome vivienda hogar codperso) j(j_str) string
    duplicates drop conglome vivienda hogar codperso, force
    save "datos crudos/enaho01-2013-700b_wide.dta", replace
}

capture confirm file "datos crudos/enaho02-2013-2000a.dta"
if _rc == 0 {
    use "datos crudos/enaho02-2013-2000a.dta", clear

    * --- Armonizacion de nombres (Typos INEI) ---
    capture rename p713b13 p713b
    capture rename p713d13 p713d
    capture rename p713e13 p713e
    capture rename factor_07 factor07
    * --------------------------------------------

    * --- Estandarizacion extrema de llaves (Anti-Ceros y Espacios) ---
    foreach var in conglome vivienda hogar codperso codinfor { 
        capture confirm variable `var'
        if _rc == 0 {
            capture tostring `var', replace force
            capture replace `var' = trim(`var')
            capture destring `var', replace force
        }
    }
    * -----------------------------------------------------------------
    drop if missing(conglome) | missing(vivienda) | missing(hogar) | missing(codperso)
    duplicates drop
    bysort conglome vivienda hogar codperso: gen num_parcela = _n
    tostring num_parcela, generate(j_str)
    replace j_str = "_" + j_str
    drop num_parcela

    * --- Ahorro de Memoria: Borrado Quirúrgico ---
    capture drop año
    capture drop a?o
    capture drop mes
    capture drop nconglome
    capture drop ubigeo
    capture drop dominio
    capture drop estrato
    capture drop periodo
    capture drop codinfor
    capture drop factor*
    capture drop factora*
    * ---------------------------------------------
    ds conglome vivienda hogar codperso j_str, not
    local vars `r(varlist)'
    foreach v of local vars {
        rename `v' v_`v'
    }
    ds conglome vivienda hogar codperso j_str, not
    local vars_wide `r(varlist)'
    reshape wide `vars_wide', i(conglome vivienda hogar codperso) j(j_str) string
    duplicates drop conglome vivienda hogar codperso, force
    save "datos crudos/enaho02-2013-2000a_wide.dta", replace
}

capture confirm file "datos crudos/enaho02-2013-2100.dta"
if _rc == 0 {
    use "datos crudos/enaho02-2013-2100.dta", clear

    * --- Armonizacion de nombres (Typos INEI) ---
    capture rename p713b13 p713b
    capture rename p713d13 p713d
    capture rename p713e13 p713e
    capture rename factor_07 factor07
    * --------------------------------------------

    * --- Estandarizacion extrema de llaves (Anti-Ceros y Espacios) ---
    foreach var in conglome vivienda hogar codperso codinfor { 
        capture confirm variable `var'
        if _rc == 0 {
            capture tostring `var', replace force
            capture replace `var' = trim(`var')
            capture destring `var', replace force
        }
    }
    * -----------------------------------------------------------------
    drop if missing(conglome) | missing(vivienda) | missing(hogar) | missing(codperso)
    duplicates drop
    bysort conglome vivienda hogar codperso: gen num_cultivo = _n
    tostring num_cultivo, generate(j_str)
    replace j_str = "_" + j_str
    drop num_cultivo

    * --- Ahorro de Memoria: Borrado Quirúrgico ---
    capture drop año
    capture drop a?o
    capture drop mes
    capture drop nconglome
    capture drop ubigeo
    capture drop dominio
    capture drop estrato
    capture drop periodo
    capture drop codinfor
    capture drop factor*
    capture drop factora*
    * ---------------------------------------------
    ds conglome vivienda hogar codperso j_str, not
    local vars `r(varlist)'
    foreach v of local vars {
        rename `v' v_`v'
    }
    ds conglome vivienda hogar codperso j_str, not
    local vars_wide `r(varlist)'
    reshape wide `vars_wide', i(conglome vivienda hogar codperso) j(j_str) string
    duplicates drop conglome vivienda hogar codperso, force
    save "datos crudos/enaho02-2013-2100_wide.dta", replace
}

capture confirm file "datos crudos/enaho02-2013-2200.dta"
if _rc == 0 {
    use "datos crudos/enaho02-2013-2200.dta", clear

    * --- Armonizacion de nombres (Typos INEI) ---
    capture rename p713b13 p713b
    capture rename p713d13 p713d
    capture rename p713e13 p713e
    capture rename factor_07 factor07
    * --------------------------------------------

    * --- Estandarizacion extrema de llaves (Anti-Ceros y Espacios) ---
    foreach var in conglome vivienda hogar codperso codinfor { 
        capture confirm variable `var'
        if _rc == 0 {
            capture tostring `var', replace force
            capture replace `var' = trim(`var')
            capture destring `var', replace force
        }
    }
    * -----------------------------------------------------------------
    drop if missing(conglome) | missing(vivienda) | missing(hogar) | missing(codperso)
    duplicates drop
    bysort conglome vivienda hogar codperso: gen num_subprod_agri = _n
    tostring num_subprod_agri, generate(j_str)
    replace j_str = "_" + j_str
    drop num_subprod_agri

    * --- Ahorro de Memoria: Borrado Quirúrgico ---
    capture drop año
    capture drop a?o
    capture drop mes
    capture drop nconglome
    capture drop ubigeo
    capture drop dominio
    capture drop estrato
    capture drop periodo
    capture drop codinfor
    capture drop factor*
    capture drop factora*
    * ---------------------------------------------
    ds conglome vivienda hogar codperso j_str, not
    local vars `r(varlist)'
    foreach v of local vars {
        rename `v' v_`v'
    }
    ds conglome vivienda hogar codperso j_str, not
    local vars_wide `r(varlist)'
    reshape wide `vars_wide', i(conglome vivienda hogar codperso) j(j_str) string
    duplicates drop conglome vivienda hogar codperso, force
    save "datos crudos/enaho02-2013-2200_wide.dta", replace
}

capture confirm file "datos crudos/enaho02-2013-2300.dta"
if _rc == 0 {
    use "datos crudos/enaho02-2013-2300.dta", clear

    * --- Armonizacion de nombres (Typos INEI) ---
    capture rename p713b13 p713b
    capture rename p713d13 p713d
    capture rename p713e13 p713e
    capture rename factor_07 factor07
    * --------------------------------------------

    * --- Estandarizacion extrema de llaves (Anti-Ceros y Espacios) ---
    foreach var in conglome vivienda hogar codperso codinfor { 
        capture confirm variable `var'
        if _rc == 0 {
            capture tostring `var', replace force
            capture replace `var' = trim(`var')
            capture destring `var', replace force
        }
    }
    * -----------------------------------------------------------------
    drop if missing(conglome) | missing(vivienda) | missing(hogar) | missing(codperso)
    duplicates drop
    bysort conglome vivienda hogar codperso: gen num_forestal = _n
    tostring num_forestal, generate(j_str)
    replace j_str = "_" + j_str
    drop num_forestal

    * --- Ahorro de Memoria: Borrado Quirúrgico ---
    capture drop año
    capture drop a?o
    capture drop mes
    capture drop nconglome
    capture drop ubigeo
    capture drop dominio
    capture drop estrato
    capture drop periodo
    capture drop codinfor
    capture drop factor*
    capture drop factora*
    * ---------------------------------------------
    ds conglome vivienda hogar codperso j_str, not
    local vars `r(varlist)'
    foreach v of local vars {
        rename `v' v_`v'
    }
    ds conglome vivienda hogar codperso j_str, not
    local vars_wide `r(varlist)'
    reshape wide `vars_wide', i(conglome vivienda hogar codperso) j(j_str) string
    duplicates drop conglome vivienda hogar codperso, force
    save "datos crudos/enaho02-2013-2300_wide.dta", replace
}

capture confirm file "datos crudos/enaho02-2013-2500.dta"
if _rc == 0 {
    use "datos crudos/enaho02-2013-2500.dta", clear

    * --- Armonizacion de nombres (Typos INEI) ---
    capture rename p713b13 p713b
    capture rename p713d13 p713d
    capture rename p713e13 p713e
    capture rename factor_07 factor07
    * --------------------------------------------

    * --- Estandarizacion extrema de llaves (Anti-Ceros y Espacios) ---
    foreach var in conglome vivienda hogar codperso codinfor { 
        capture confirm variable `var'
        if _rc == 0 {
            capture tostring `var', replace force
            capture replace `var' = trim(`var')
            capture destring `var', replace force
        }
    }
    * -----------------------------------------------------------------
    drop if missing(conglome) | missing(vivienda) | missing(hogar) | missing(codperso)
    duplicates drop
    bysort conglome vivienda hogar codperso: gen num_pecuario = _n
    tostring num_pecuario, generate(j_str)
    replace j_str = "_" + j_str
    drop num_pecuario

    * --- Ahorro de Memoria: Borrado Quirúrgico ---
    capture drop año
    capture drop a?o
    capture drop mes
    capture drop nconglome
    capture drop ubigeo
    capture drop dominio
    capture drop estrato
    capture drop periodo
    capture drop codinfor
    capture drop factor*
    capture drop factora*
    * ---------------------------------------------
    ds conglome vivienda hogar codperso j_str, not
    local vars `r(varlist)'
    foreach v of local vars {
        rename `v' v_`v'
    }
    ds conglome vivienda hogar codperso j_str, not
    local vars_wide `r(varlist)'
    reshape wide `vars_wide', i(conglome vivienda hogar codperso) j(j_str) string
    duplicates drop conglome vivienda hogar codperso, force
    save "datos crudos/enaho02-2013-2500_wide.dta", replace
}

capture confirm file "datos crudos/enaho02-2013-2600.dta"
if _rc == 0 {
    use "datos crudos/enaho02-2013-2600.dta", clear

    * --- Armonizacion de nombres (Typos INEI) ---
    capture rename p713b13 p713b
    capture rename p713d13 p713d
    capture rename p713e13 p713e
    capture rename factor_07 factor07
    * --------------------------------------------

    * --- Estandarizacion extrema de llaves (Anti-Ceros y Espacios) ---
    foreach var in conglome vivienda hogar codperso codinfor { 
        capture confirm variable `var'
        if _rc == 0 {
            capture tostring `var', replace force
            capture replace `var' = trim(`var')
            capture destring `var', replace force
        }
    }
    * -----------------------------------------------------------------
    drop if missing(conglome) | missing(vivienda) | missing(hogar) | missing(codperso)
    duplicates drop
    bysort conglome vivienda hogar codperso: gen num_subprod_pec = _n
    tostring num_subprod_pec, generate(j_str)
    replace j_str = "_" + j_str
    drop num_subprod_pec

    * --- Ahorro de Memoria: Borrado Quirúrgico ---
    capture drop año
    capture drop a?o
    capture drop mes
    capture drop nconglome
    capture drop ubigeo
    capture drop dominio
    capture drop estrato
    capture drop periodo
    capture drop codinfor
    capture drop factor*
    capture drop factora*
    * ---------------------------------------------
    ds conglome vivienda hogar codperso j_str, not
    local vars `r(varlist)'
    foreach v of local vars {
        rename `v' v_`v'
    }
    ds conglome vivienda hogar codperso j_str, not
    local vars_wide `r(varlist)'
    reshape wide `vars_wide', i(conglome vivienda hogar codperso) j(j_str) string
    duplicates drop conglome vivienda hogar codperso, force
    save "datos crudos/enaho02-2013-2600_wide.dta", replace
}

capture confirm file "datos crudos/enaho02-2013-2000.dta"
if _rc == 0 {
    use "datos crudos/enaho02-2013-2000.dta", clear

    * --- Armonizacion de nombres (Typos INEI) ---
    capture rename p713b13 p713b
    capture rename p713d13 p713d
    capture rename p713e13 p713e
    capture rename factor_07 factor07
    * --------------------------------------------

    * --- Estandarizacion extrema de llaves (Anti-Ceros y Espacios) ---
    foreach var in conglome vivienda hogar codperso codinfor { 
        capture confirm variable `var'
        if _rc == 0 {
            capture tostring `var', replace force
            capture replace `var' = trim(`var')
            capture destring `var', replace force
        }
    }
    * -----------------------------------------------------------------

    * --- Ahorro de Memoria: Borrado Quirúrgico ---
    capture drop año
    capture drop a?o
    capture drop mes
    capture drop nconglome
    capture drop ubigeo
    capture drop dominio
    capture drop estrato
    capture drop periodo
    capture drop codinfor
    capture drop factor*
    capture drop factora*
    * ---------------------------------------------
    drop if missing(conglome) | missing(vivienda) | missing(hogar) | missing(codperso)
    duplicates drop conglome vivienda hogar codperso, force
    save "datos crudos/enaho02-2013-2000_clean.dta", replace
}

capture confirm file "datos crudos/enaho02-2013-2400.dta"
if _rc == 0 {
    use "datos crudos/enaho02-2013-2400.dta", clear

    * --- Armonizacion de nombres (Typos INEI) ---
    capture rename p713b13 p713b
    capture rename p713d13 p713d
    capture rename p713e13 p713e
    capture rename factor_07 factor07
    * --------------------------------------------

    * --- Estandarizacion extrema de llaves (Anti-Ceros y Espacios) ---
    foreach var in conglome vivienda hogar codperso codinfor { 
        capture confirm variable `var'
        if _rc == 0 {
            capture tostring `var', replace force
            capture replace `var' = trim(`var')
            capture destring `var', replace force
        }
    }
    * -----------------------------------------------------------------

    * --- Ahorro de Memoria: Borrado Quirúrgico ---
    capture drop año
    capture drop a?o
    capture drop mes
    capture drop nconglome
    capture drop ubigeo
    capture drop dominio
    capture drop estrato
    capture drop periodo
    capture drop codinfor
    capture drop factor*
    capture drop factora*
    * ---------------------------------------------
    drop if missing(conglome) | missing(vivienda) | missing(hogar) | missing(codperso)
    duplicates drop conglome vivienda hogar codperso, force
    save "datos crudos/enaho02-2013-2400_clean.dta", replace
}

capture confirm file "datos crudos/enaho02-2013-2700.dta"
if _rc == 0 {
    use "datos crudos/enaho02-2013-2700.dta", clear

    * --- Armonizacion de nombres (Typos INEI) ---
    capture rename p713b13 p713b
    capture rename p713d13 p713d
    capture rename p713e13 p713e
    capture rename factor_07 factor07
    * --------------------------------------------

    * --- Estandarizacion extrema de llaves (Anti-Ceros y Espacios) ---
    foreach var in conglome vivienda hogar codperso codinfor { 
        capture confirm variable `var'
        if _rc == 0 {
            capture tostring `var', replace force
            capture replace `var' = trim(`var')
            capture destring `var', replace force
        }
    }
    * -----------------------------------------------------------------

    * --- Ahorro de Memoria: Borrado Quirúrgico ---
    capture drop año
    capture drop a?o
    capture drop mes
    capture drop nconglome
    capture drop ubigeo
    capture drop dominio
    capture drop estrato
    capture drop periodo
    capture drop codinfor
    capture drop factor*
    capture drop factora*
    * ---------------------------------------------
    drop if missing(conglome) | missing(vivienda) | missing(hogar) | missing(codperso)
    duplicates drop conglome vivienda hogar codperso, force
    save "datos crudos/enaho02-2013-2700_clean.dta", replace
}

use "datos crudos/enaho01-2013-200.dta", clear

    * --- Estandarizacion extrema de llaves (Anti-Ceros y Espacios) ---
    foreach var in conglome vivienda hogar codperso codinfor { 
        capture confirm variable `var'
        if _rc == 0 {
            capture tostring `var', replace force
            capture replace `var' = trim(`var')
            capture destring `var', replace force
        }
    }
    * -----------------------------------------------------------------
drop if missing(conglome) | missing(vivienda) | missing(hogar) | missing(codperso)
duplicates drop conglome vivienda hogar codperso, force

capture confirm file "datos crudos/enaho01a-2013-300_clean.dta"
if _rc == 0 {
    merge 1:1 conglome vivienda hogar codperso using "datos crudos/enaho01a-2013-300_clean.dta", force
    drop if _merge == 2
    drop _merge
}
capture confirm file "datos crudos/enaho01a-2013-400_clean.dta"
if _rc == 0 {
    merge 1:1 conglome vivienda hogar codperso using "datos crudos/enaho01a-2013-400_clean.dta", force
    drop if _merge == 2
    drop _merge
}
capture confirm file "datos crudos/enaho01a-2013-500_clean.dta"
if _rc == 0 {
    merge 1:1 conglome vivienda hogar codperso using "datos crudos/enaho01a-2013-500_clean.dta", force
    drop if _merge == 2
    drop _merge
}
capture confirm file "datos crudos/enaho01b-2013-1_clean.dta"
if _rc == 0 {
    merge 1:1 conglome vivienda hogar codperso using "datos crudos/enaho01b-2013-1_clean.dta", force
    drop if _merge == 2
    drop _merge
}
capture confirm file "datos crudos/enaho01b-2013-2_clean.dta"
if _rc == 0 {
    merge 1:1 conglome vivienda hogar codperso using "datos crudos/enaho01b-2013-2_clean.dta", force
    drop if _merge == 2
    drop _merge
}
capture confirm file "datos crudos/enaho01b-2013-3_clean.dta"
if _rc == 0 {
    merge 1:1 conglome vivienda hogar codperso using "datos crudos/enaho01b-2013-3_clean.dta", force
    drop if _merge == 2
    drop _merge
}
capture confirm file "datos crudos/enaho01-2013-700a_wide.dta"
if _rc == 0 {
    merge 1:1 conglome vivienda hogar codperso using "datos crudos/enaho01-2013-700a_wide.dta", force
    drop if _merge == 2
    drop _merge
}
capture confirm file "datos crudos/enaho01-2013-700b_wide.dta"
if _rc == 0 {
    merge 1:1 conglome vivienda hogar codperso using "datos crudos/enaho01-2013-700b_wide.dta", force
    drop if _merge == 2
    drop _merge
}
capture confirm file "datos crudos/enaho02-2013-2000_clean.dta"
if _rc == 0 {
    merge 1:1 conglome vivienda hogar codperso using "datos crudos/enaho02-2013-2000_clean.dta", force
    drop if _merge == 2
    drop _merge
}
capture confirm file "datos crudos/enaho02-2013-2000a_wide.dta"
if _rc == 0 {
    merge 1:1 conglome vivienda hogar codperso using "datos crudos/enaho02-2013-2000a_wide.dta", force
    drop if _merge == 2
    drop _merge
}
capture confirm file "datos crudos/enaho02-2013-2100_wide.dta"
if _rc == 0 {
    merge 1:1 conglome vivienda hogar codperso using "datos crudos/enaho02-2013-2100_wide.dta", force
    drop if _merge == 2
    drop _merge
}
capture confirm file "datos crudos/enaho02-2013-2200_wide.dta"
if _rc == 0 {
    merge 1:1 conglome vivienda hogar codperso using "datos crudos/enaho02-2013-2200_wide.dta", force
    drop if _merge == 2
    drop _merge
}
capture confirm file "datos crudos/enaho02-2013-2300_wide.dta"
if _rc == 0 {
    merge 1:1 conglome vivienda hogar codperso using "datos crudos/enaho02-2013-2300_wide.dta", force
    drop if _merge == 2
    drop _merge
}
capture confirm file "datos crudos/enaho02-2013-2400_clean.dta"
if _rc == 0 {
    merge 1:1 conglome vivienda hogar codperso using "datos crudos/enaho02-2013-2400_clean.dta", force
    drop if _merge == 2
    drop _merge
}
capture confirm file "datos crudos/enaho02-2013-2500_wide.dta"
if _rc == 0 {
    merge 1:1 conglome vivienda hogar codperso using "datos crudos/enaho02-2013-2500_wide.dta", force
    drop if _merge == 2
    drop _merge
}
capture confirm file "datos crudos/enaho02-2013-2600_wide.dta"
if _rc == 0 {
    merge 1:1 conglome vivienda hogar codperso using "datos crudos/enaho02-2013-2600_wide.dta", force
    drop if _merge == 2
    drop _merge
}
capture confirm file "datos crudos/enaho02-2013-2700_clean.dta"
if _rc == 0 {
    merge 1:1 conglome vivienda hogar codperso using "datos crudos/enaho02-2013-2700_clean.dta", force
    drop if _merge == 2
    drop _merge
}
save "datos crudos/temp_personas_2013.dta", replace

use "datos crudos/temp_personas_2013.dta", clear
capture confirm file "datos crudos/enaho01-2013-100_clean.dta"
if _rc == 0 {
    merge m:1 conglome vivienda hogar using "datos crudos/enaho01-2013-100_clean.dta", force
    drop if _merge == 2
    drop _merge
}
capture confirm file "datos crudos/enaho01-2013-700_clean.dta"
if _rc == 0 {
    merge m:1 conglome vivienda hogar using "datos crudos/enaho01-2013-700_clean.dta", force
    drop if _merge == 2
    drop _merge
}
capture confirm file "datos crudos/sumaria-2013_clean.dta"
if _rc == 0 {
    merge m:1 conglome vivienda hogar using "datos crudos/sumaria-2013_clean.dta", force
    drop if _merge == 2
    drop _merge
}
save "datos crudos/2013.dta", replace

use "datos crudos/2013.dta", clear
rename conglome con_13
rename vivienda viv_13
rename hogar hog_13
save "datos crudos/2013n.dta", replace

use "datos crudos/enaho01_2012_2016_100_panel.dta", clear
    * --- Armonizar llaves maestras del Panel Antiguo ---
    capture rename cenl numpanh
    capture rename num_hog numpanh
    * -----------------------------------------------------------
    * --- Armonizar nombres mutantes del Panel ---
    capture rename factor_07_13 factor07_13
    capture rename factor07_13_13 factor07_13
    capture rename factor07_13a factor07_13
    capture rename facpanel* fac_panel*
    * -----------------------------------------------------------
    * --- KEEP SEGURO (Evita error 111 si faltan variables) ---
    local keep_vars numpanh mes_13 conglome_13 vivienda_13 hogar_13 ubigeo_13 dominio_13 estrato_13 factor07_13
    foreach v in p101_13 p105a_13 tipenc_13 fecent_13 result_13 panel_13 periodo_13 {
        capture confirm variable `v'
        if _rc == 0 {
            local keep_vars `keep_vars' `v'
        }
    }
    foreach prefix in hpan hpanel fac_panel facpanel {
        capture ds `prefix'*
        if _rc == 0 {
            local keep_vars `keep_vars' `r(varlist)'
        }
    }
    local keep_vars: list uniq keep_vars
    keep `keep_vars'
    * -----------------------------------------------------------
rename conglome_13 con_13
rename vivienda_13 viv_13
rename hogar_13 hog_13
    * --- Estandarizacion extrema del Panel ---
    foreach var in con_13 viv_13 hog_13 numpanh {
        capture confirm variable `var'
        if _rc == 0 {
            capture tostring `var', replace force
            capture replace `var' = trim(`var')
            capture destring `var', replace force
        }
    }
capture destring mes_13, replace force
keep if inrange(mes_13, 1, 12)
drop if missing(con_13) | missing(viv_13) | missing(hog_13)
duplicates drop con_13 viv_13 hog_13, force
gen ID = 2013
merge 1:m con_13 viv_13 hog_13 using "datos crudos/2013n.dta", force
drop if _merge == 1
drop _merge
rename con_13 conglome
rename viv_13 vivienda
rename hog_13 hogar
save "resultados/2013_enahop.dta", replace

**************************************************
* PROCESANDO AÑO 2014
**************************************************

capture confirm file "datos crudos/enaho01-2014-100.dta"
if _rc == 0 {
    use "datos crudos/enaho01-2014-100.dta", clear

    * --- Armonizacion de nombres (Typos INEI) ---
    capture rename p713b14 p713b
    capture rename p713d14 p713d
    capture rename p713e14 p713e
    capture rename factor_07 factor07
    * --------------------------------------------

    * --- Estandarizacion extrema de llaves (Anti-Ceros y Espacios) ---
    foreach var in conglome vivienda hogar codperso codinfor { 
        capture confirm variable `var'
        if _rc == 0 {
            capture tostring `var', replace force
            capture replace `var' = trim(`var')
            capture destring `var', replace force
        }
    }
    * -----------------------------------------------------------------

    * --- Ahorro de Memoria: Borrado Quirúrgico ---
    capture drop año
    capture drop a?o
    capture drop mes
    capture drop nconglome
    capture drop ubigeo
    capture drop dominio
    capture drop estrato
    capture drop periodo
    capture drop codinfor
    capture drop factor*
    capture drop factora*
    * ---------------------------------------------
    drop if missing(conglome) | missing(vivienda) | missing(hogar)
    duplicates drop conglome vivienda hogar, force
    save "datos crudos/enaho01-2014-100_clean.dta", replace
}

capture confirm file "datos crudos/enaho01-2014-700.dta"
if _rc == 0 {
    use "datos crudos/enaho01-2014-700.dta", clear

    * --- Armonizacion de nombres (Typos INEI) ---
    capture rename p713b14 p713b
    capture rename p713d14 p713d
    capture rename p713e14 p713e
    capture rename factor_07 factor07
    * --------------------------------------------

    * --- Estandarizacion extrema de llaves (Anti-Ceros y Espacios) ---
    foreach var in conglome vivienda hogar codperso codinfor { 
        capture confirm variable `var'
        if _rc == 0 {
            capture tostring `var', replace force
            capture replace `var' = trim(`var')
            capture destring `var', replace force
        }
    }
    * -----------------------------------------------------------------

    * --- Ahorro de Memoria: Borrado Quirúrgico ---
    capture drop año
    capture drop a?o
    capture drop mes
    capture drop nconglome
    capture drop ubigeo
    capture drop dominio
    capture drop estrato
    capture drop periodo
    capture drop codinfor
    capture drop factor*
    capture drop factora*
    * ---------------------------------------------
    drop if missing(conglome) | missing(vivienda) | missing(hogar)
    duplicates drop conglome vivienda hogar, force
    save "datos crudos/enaho01-2014-700_clean.dta", replace
}

capture confirm file "datos crudos/sumaria-2014.dta"
if _rc == 0 {
    use "datos crudos/sumaria-2014.dta", clear

    * --- Armonizacion de nombres (Typos INEI) ---
    capture rename p713b14 p713b
    capture rename p713d14 p713d
    capture rename p713e14 p713e
    capture rename factor_07 factor07
    * --------------------------------------------

    * --- Estandarizacion extrema de llaves (Anti-Ceros y Espacios) ---
    foreach var in conglome vivienda hogar codperso codinfor { 
        capture confirm variable `var'
        if _rc == 0 {
            capture tostring `var', replace force
            capture replace `var' = trim(`var')
            capture destring `var', replace force
        }
    }
    * -----------------------------------------------------------------

    * --- Ahorro de Memoria: Borrado Quirúrgico ---
    capture drop año
    capture drop a?o
    capture drop mes
    capture drop nconglome
    capture drop ubigeo
    capture drop dominio
    capture drop estrato
    capture drop periodo
    capture drop codinfor
    capture drop factor*
    capture drop factora*
    * ---------------------------------------------
    drop if missing(conglome) | missing(vivienda) | missing(hogar)
    duplicates drop conglome vivienda hogar, force
    save "datos crudos/sumaria-2014_clean.dta", replace
}

capture confirm file "datos crudos/enaho01a-2014-300.dta"
if _rc == 0 {
    use "datos crudos/enaho01a-2014-300.dta", clear

    * --- Armonizacion de nombres (Typos INEI) ---
    capture rename p713b14 p713b
    capture rename p713d14 p713d
    capture rename p713e14 p713e
    capture rename factor_07 factor07
    * --------------------------------------------

    * --- Estandarizacion extrema de llaves (Anti-Ceros y Espacios) ---
    foreach var in conglome vivienda hogar codperso codinfor { 
        capture confirm variable `var'
        if _rc == 0 {
            capture tostring `var', replace force
            capture replace `var' = trim(`var')
            capture destring `var', replace force
        }
    }
    * -----------------------------------------------------------------

    * --- Ahorro de Memoria: Borrado Quirúrgico ---
    capture drop año
    capture drop a?o
    capture drop mes
    capture drop nconglome
    capture drop ubigeo
    capture drop dominio
    capture drop estrato
    capture drop periodo
    capture drop codinfor
    capture drop factor*
    capture drop factora*
    * ---------------------------------------------
    drop if missing(conglome) | missing(vivienda) | missing(hogar) | missing(codperso)
    duplicates drop conglome vivienda hogar codperso, force
    save "datos crudos/enaho01a-2014-300_clean.dta", replace
}

capture confirm file "datos crudos/enaho01a-2014-400.dta"
if _rc == 0 {
    use "datos crudos/enaho01a-2014-400.dta", clear

    * --- Armonizacion de nombres (Typos INEI) ---
    capture rename p713b14 p713b
    capture rename p713d14 p713d
    capture rename p713e14 p713e
    capture rename factor_07 factor07
    * --------------------------------------------

    * --- Estandarizacion extrema de llaves (Anti-Ceros y Espacios) ---
    foreach var in conglome vivienda hogar codperso codinfor { 
        capture confirm variable `var'
        if _rc == 0 {
            capture tostring `var', replace force
            capture replace `var' = trim(`var')
            capture destring `var', replace force
        }
    }
    * -----------------------------------------------------------------

    * --- Ahorro de Memoria: Borrado Quirúrgico ---
    capture drop año
    capture drop a?o
    capture drop mes
    capture drop nconglome
    capture drop ubigeo
    capture drop dominio
    capture drop estrato
    capture drop periodo
    capture drop codinfor
    capture drop factor*
    capture drop factora*
    * ---------------------------------------------
    drop if missing(conglome) | missing(vivienda) | missing(hogar) | missing(codperso)
    duplicates drop conglome vivienda hogar codperso, force
    save "datos crudos/enaho01a-2014-400_clean.dta", replace
}

capture confirm file "datos crudos/enaho01a-2014-500.dta"
if _rc == 0 {
    use "datos crudos/enaho01a-2014-500.dta", clear

    * --- Armonizacion de nombres (Typos INEI) ---
    capture rename p713b14 p713b
    capture rename p713d14 p713d
    capture rename p713e14 p713e
    capture rename factor_07 factor07
    * --------------------------------------------

    * --- Estandarizacion extrema de llaves (Anti-Ceros y Espacios) ---
    foreach var in conglome vivienda hogar codperso codinfor { 
        capture confirm variable `var'
        if _rc == 0 {
            capture tostring `var', replace force
            capture replace `var' = trim(`var')
            capture destring `var', replace force
        }
    }
    * -----------------------------------------------------------------

    * --- Ahorro de Memoria: Borrado Quirúrgico ---
    capture drop año
    capture drop a?o
    capture drop mes
    capture drop nconglome
    capture drop ubigeo
    capture drop dominio
    capture drop estrato
    capture drop periodo
    capture drop codinfor
    capture drop factor*
    capture drop factora*
    * ---------------------------------------------
    drop if missing(conglome) | missing(vivienda) | missing(hogar) | missing(codperso)
    duplicates drop conglome vivienda hogar codperso, force
    save "datos crudos/enaho01a-2014-500_clean.dta", replace
}

capture confirm file "datos crudos/enaho01b-2014-1.dta"
if _rc == 0 {
    use "datos crudos/enaho01b-2014-1.dta", clear

    * --- Armonizacion de nombres (Typos INEI) ---
    capture rename p713b14 p713b
    capture rename p713d14 p713d
    capture rename p713e14 p713e
    capture rename factor_07 factor07
    * --------------------------------------------

    * --- Estandarizacion extrema de llaves (Anti-Ceros y Espacios) ---
    foreach var in conglome vivienda hogar codperso codinfor { 
        capture confirm variable `var'
        if _rc == 0 {
            capture tostring `var', replace force
            capture replace `var' = trim(`var')
            capture destring `var', replace force
        }
    }
    * -----------------------------------------------------------------

    * --- Ahorro de Memoria: Borrado Quirúrgico ---
    capture drop año
    capture drop a?o
    capture drop mes
    capture drop nconglome
    capture drop ubigeo
    capture drop dominio
    capture drop estrato
    capture drop periodo
    capture drop codinfor
    capture drop factor*
    capture drop factora*
    * ---------------------------------------------
    drop if missing(conglome) | missing(vivienda) | missing(hogar) | missing(codperso)
    duplicates drop conglome vivienda hogar codperso, force
    save "datos crudos/enaho01b-2014-1_clean.dta", replace
}

capture confirm file "datos crudos/enaho01b-2014-2.dta"
if _rc == 0 {
    use "datos crudos/enaho01b-2014-2.dta", clear

    * --- Armonizacion de nombres (Typos INEI) ---
    capture rename p713b14 p713b
    capture rename p713d14 p713d
    capture rename p713e14 p713e
    capture rename factor_07 factor07
    * --------------------------------------------

    * --- Estandarizacion extrema de llaves (Anti-Ceros y Espacios) ---
    foreach var in conglome vivienda hogar codperso codinfor { 
        capture confirm variable `var'
        if _rc == 0 {
            capture tostring `var', replace force
            capture replace `var' = trim(`var')
            capture destring `var', replace force
        }
    }
    * -----------------------------------------------------------------

    * --- Ahorro de Memoria: Borrado Quirúrgico ---
    capture drop año
    capture drop a?o
    capture drop mes
    capture drop nconglome
    capture drop ubigeo
    capture drop dominio
    capture drop estrato
    capture drop periodo
    capture drop codinfor
    capture drop factor*
    capture drop factora*
    * ---------------------------------------------
    drop if missing(conglome) | missing(vivienda) | missing(hogar) | missing(codperso)
    duplicates drop conglome vivienda hogar codperso, force
    save "datos crudos/enaho01b-2014-2_clean.dta", replace
}

capture confirm file "datos crudos/enaho01b-2014-3.dta"
if _rc == 0 {
    use "datos crudos/enaho01b-2014-3.dta", clear

    * --- Armonizacion de nombres (Typos INEI) ---
    capture rename p713b14 p713b
    capture rename p713d14 p713d
    capture rename p713e14 p713e
    capture rename factor_07 factor07
    * --------------------------------------------

    * --- Estandarizacion extrema de llaves (Anti-Ceros y Espacios) ---
    foreach var in conglome vivienda hogar codperso codinfor { 
        capture confirm variable `var'
        if _rc == 0 {
            capture tostring `var', replace force
            capture replace `var' = trim(`var')
            capture destring `var', replace force
        }
    }
    * -----------------------------------------------------------------

    * --- Ahorro de Memoria: Borrado Quirúrgico ---
    capture drop año
    capture drop a?o
    capture drop mes
    capture drop nconglome
    capture drop ubigeo
    capture drop dominio
    capture drop estrato
    capture drop periodo
    capture drop codinfor
    capture drop factor*
    capture drop factora*
    * ---------------------------------------------
    drop if missing(conglome) | missing(vivienda) | missing(hogar) | missing(codperso)
    duplicates drop conglome vivienda hogar codperso, force
    save "datos crudos/enaho01b-2014-3_clean.dta", replace
}

capture confirm file "datos crudos/enaho01-2014-700a.dta"
if _rc == 0 {
    use "datos crudos/enaho01-2014-700a.dta", clear

    * --- Armonizacion de nombres (Typos INEI) ---
    capture rename p713b14 p713b
    capture rename p713d14 p713d
    capture rename p713e14 p713e
    capture rename factor_07 factor07
    * --------------------------------------------
    capture rename p702 codperso
    capture tostring codperso, replace force
    capture tostring codinfor, replace force
    capture replace codperso = trim(codperso)
    capture replace codinfor = trim(codinfor)
    capture replace codperso = codinfor if codperso == "" | codperso == "."

    * --- Estandarizacion extrema de llaves (Anti-Ceros y Espacios) ---
    foreach var in conglome vivienda hogar codperso codinfor { 
        capture confirm variable `var'
        if _rc == 0 {
            capture tostring `var', replace force
            capture replace `var' = trim(`var')
            capture destring `var', replace force
        }
    }
    * -----------------------------------------------------------------
    gen programa_social1 = 0
    replace programa_social1 = 1 if inlist(p703,1,2,3,4,5,6,7,8,10)
    drop if missing(conglome) | missing(vivienda) | missing(hogar) | missing(codperso)
    duplicates drop conglome vivienda hogar codperso p703, force
    bysort conglome vivienda hogar codperso: gen num_item = _n
    tostring num_item, generate(j_str)
    replace j_str = "_" + j_str
    drop num_item

    * --- Ahorro de Memoria: Borrado Quirúrgico ---
    capture drop año
    capture drop a?o
    capture drop mes
    capture drop nconglome
    capture drop ubigeo
    capture drop dominio
    capture drop estrato
    capture drop periodo
    capture drop codinfor
    capture drop factor*
    capture drop factora*
    * ---------------------------------------------
    ds conglome vivienda hogar codperso j_str, not
    local vars `r(varlist)'
    foreach v of local vars {
        rename `v' v_`v'
    }
    ds conglome vivienda hogar codperso j_str, not
    local vars_wide `r(varlist)'
    reshape wide `vars_wide', i(conglome vivienda hogar codperso) j(j_str) string
    duplicates drop conglome vivienda hogar codperso, force
    save "datos crudos/enaho01-2014-700a_wide.dta", replace
}

capture confirm file "datos crudos/enaho01-2014-700b.dta"
if _rc == 0 {
    use "datos crudos/enaho01-2014-700b.dta", clear

    * --- Armonizacion de nombres (Typos INEI) ---
    capture rename p713b14 p713b
    capture rename p713d14 p713d
    capture rename p713e14 p713e
    capture rename factor_07 factor07
    * --------------------------------------------
    capture rename p711n codperso
    capture tostring codperso, replace force
    capture tostring codinfor, replace force
    capture replace codperso = trim(codperso)
    capture replace codinfor = trim(codinfor)
    capture replace codperso = codinfor if codperso == "" | codperso == "."

    * --- Estandarizacion extrema de llaves (Anti-Ceros y Espacios) ---
    foreach var in conglome vivienda hogar codperso codinfor { 
        capture confirm variable `var'
        if _rc == 0 {
            capture tostring `var', replace force
            capture replace `var' = trim(`var')
            capture destring `var', replace force
        }
    }
    * -----------------------------------------------------------------
    gen programa_social2 = 0
    replace programa_social2 = 1 if inlist(p712,1,2,3,4,5,6,7,8,9,10,11,12,13,15,16,17,18,19,29,30)
    capture gen periodo_prog14 = p713d - p713b
    drop if missing(conglome) | missing(vivienda) | missing(hogar) | missing(codperso)
    duplicates drop conglome vivienda hogar codperso p712, force
    bysort conglome vivienda hogar codperso: gen num_item = _n
    tostring num_item, generate(j_str)
    replace j_str = "_" + j_str
    drop num_item

    * --- Ahorro de Memoria: Borrado Quirúrgico ---
    capture drop año
    capture drop a?o
    capture drop mes
    capture drop nconglome
    capture drop ubigeo
    capture drop dominio
    capture drop estrato
    capture drop periodo
    capture drop codinfor
    capture drop factor*
    capture drop factora*
    * ---------------------------------------------
    ds conglome vivienda hogar codperso j_str, not
    local vars `r(varlist)'
    foreach v of local vars {
        rename `v' v_`v'
    }
    ds conglome vivienda hogar codperso j_str, not
    local vars_wide `r(varlist)'
    reshape wide `vars_wide', i(conglome vivienda hogar codperso) j(j_str) string
    duplicates drop conglome vivienda hogar codperso, force
    save "datos crudos/enaho01-2014-700b_wide.dta", replace
}

capture confirm file "datos crudos/enaho02-2014-2000a.dta"
if _rc == 0 {
    use "datos crudos/enaho02-2014-2000a.dta", clear

    * --- Armonizacion de nombres (Typos INEI) ---
    capture rename p713b14 p713b
    capture rename p713d14 p713d
    capture rename p713e14 p713e
    capture rename factor_07 factor07
    * --------------------------------------------

    * --- Estandarizacion extrema de llaves (Anti-Ceros y Espacios) ---
    foreach var in conglome vivienda hogar codperso codinfor { 
        capture confirm variable `var'
        if _rc == 0 {
            capture tostring `var', replace force
            capture replace `var' = trim(`var')
            capture destring `var', replace force
        }
    }
    * -----------------------------------------------------------------
    drop if missing(conglome) | missing(vivienda) | missing(hogar) | missing(codperso)
    duplicates drop
    bysort conglome vivienda hogar codperso: gen num_parcela = _n
    tostring num_parcela, generate(j_str)
    replace j_str = "_" + j_str
    drop num_parcela

    * --- Ahorro de Memoria: Borrado Quirúrgico ---
    capture drop año
    capture drop a?o
    capture drop mes
    capture drop nconglome
    capture drop ubigeo
    capture drop dominio
    capture drop estrato
    capture drop periodo
    capture drop codinfor
    capture drop factor*
    capture drop factora*
    * ---------------------------------------------
    ds conglome vivienda hogar codperso j_str, not
    local vars `r(varlist)'
    foreach v of local vars {
        rename `v' v_`v'
    }
    ds conglome vivienda hogar codperso j_str, not
    local vars_wide `r(varlist)'
    reshape wide `vars_wide', i(conglome vivienda hogar codperso) j(j_str) string
    duplicates drop conglome vivienda hogar codperso, force
    save "datos crudos/enaho02-2014-2000a_wide.dta", replace
}

capture confirm file "datos crudos/enaho02-2014-2100.dta"
if _rc == 0 {
    use "datos crudos/enaho02-2014-2100.dta", clear

    * --- Armonizacion de nombres (Typos INEI) ---
    capture rename p713b14 p713b
    capture rename p713d14 p713d
    capture rename p713e14 p713e
    capture rename factor_07 factor07
    * --------------------------------------------

    * --- Estandarizacion extrema de llaves (Anti-Ceros y Espacios) ---
    foreach var in conglome vivienda hogar codperso codinfor { 
        capture confirm variable `var'
        if _rc == 0 {
            capture tostring `var', replace force
            capture replace `var' = trim(`var')
            capture destring `var', replace force
        }
    }
    * -----------------------------------------------------------------
    drop if missing(conglome) | missing(vivienda) | missing(hogar) | missing(codperso)
    duplicates drop
    bysort conglome vivienda hogar codperso: gen num_cultivo = _n
    tostring num_cultivo, generate(j_str)
    replace j_str = "_" + j_str
    drop num_cultivo

    * --- Ahorro de Memoria: Borrado Quirúrgico ---
    capture drop año
    capture drop a?o
    capture drop mes
    capture drop nconglome
    capture drop ubigeo
    capture drop dominio
    capture drop estrato
    capture drop periodo
    capture drop codinfor
    capture drop factor*
    capture drop factora*
    * ---------------------------------------------
    ds conglome vivienda hogar codperso j_str, not
    local vars `r(varlist)'
    foreach v of local vars {
        rename `v' v_`v'
    }
    ds conglome vivienda hogar codperso j_str, not
    local vars_wide `r(varlist)'
    reshape wide `vars_wide', i(conglome vivienda hogar codperso) j(j_str) string
    duplicates drop conglome vivienda hogar codperso, force
    save "datos crudos/enaho02-2014-2100_wide.dta", replace
}

capture confirm file "datos crudos/enaho02-2014-2200.dta"
if _rc == 0 {
    use "datos crudos/enaho02-2014-2200.dta", clear

    * --- Armonizacion de nombres (Typos INEI) ---
    capture rename p713b14 p713b
    capture rename p713d14 p713d
    capture rename p713e14 p713e
    capture rename factor_07 factor07
    * --------------------------------------------

    * --- Estandarizacion extrema de llaves (Anti-Ceros y Espacios) ---
    foreach var in conglome vivienda hogar codperso codinfor { 
        capture confirm variable `var'
        if _rc == 0 {
            capture tostring `var', replace force
            capture replace `var' = trim(`var')
            capture destring `var', replace force
        }
    }
    * -----------------------------------------------------------------
    drop if missing(conglome) | missing(vivienda) | missing(hogar) | missing(codperso)
    duplicates drop
    bysort conglome vivienda hogar codperso: gen num_subprod_agri = _n
    tostring num_subprod_agri, generate(j_str)
    replace j_str = "_" + j_str
    drop num_subprod_agri

    * --- Ahorro de Memoria: Borrado Quirúrgico ---
    capture drop año
    capture drop a?o
    capture drop mes
    capture drop nconglome
    capture drop ubigeo
    capture drop dominio
    capture drop estrato
    capture drop periodo
    capture drop codinfor
    capture drop factor*
    capture drop factora*
    * ---------------------------------------------
    ds conglome vivienda hogar codperso j_str, not
    local vars `r(varlist)'
    foreach v of local vars {
        rename `v' v_`v'
    }
    ds conglome vivienda hogar codperso j_str, not
    local vars_wide `r(varlist)'
    reshape wide `vars_wide', i(conglome vivienda hogar codperso) j(j_str) string
    duplicates drop conglome vivienda hogar codperso, force
    save "datos crudos/enaho02-2014-2200_wide.dta", replace
}

capture confirm file "datos crudos/enaho02-2014-2300.dta"
if _rc == 0 {
    use "datos crudos/enaho02-2014-2300.dta", clear

    * --- Armonizacion de nombres (Typos INEI) ---
    capture rename p713b14 p713b
    capture rename p713d14 p713d
    capture rename p713e14 p713e
    capture rename factor_07 factor07
    * --------------------------------------------

    * --- Estandarizacion extrema de llaves (Anti-Ceros y Espacios) ---
    foreach var in conglome vivienda hogar codperso codinfor { 
        capture confirm variable `var'
        if _rc == 0 {
            capture tostring `var', replace force
            capture replace `var' = trim(`var')
            capture destring `var', replace force
        }
    }
    * -----------------------------------------------------------------
    drop if missing(conglome) | missing(vivienda) | missing(hogar) | missing(codperso)
    duplicates drop
    bysort conglome vivienda hogar codperso: gen num_forestal = _n
    tostring num_forestal, generate(j_str)
    replace j_str = "_" + j_str
    drop num_forestal

    * --- Ahorro de Memoria: Borrado Quirúrgico ---
    capture drop año
    capture drop a?o
    capture drop mes
    capture drop nconglome
    capture drop ubigeo
    capture drop dominio
    capture drop estrato
    capture drop periodo
    capture drop codinfor
    capture drop factor*
    capture drop factora*
    * ---------------------------------------------
    ds conglome vivienda hogar codperso j_str, not
    local vars `r(varlist)'
    foreach v of local vars {
        rename `v' v_`v'
    }
    ds conglome vivienda hogar codperso j_str, not
    local vars_wide `r(varlist)'
    reshape wide `vars_wide', i(conglome vivienda hogar codperso) j(j_str) string
    duplicates drop conglome vivienda hogar codperso, force
    save "datos crudos/enaho02-2014-2300_wide.dta", replace
}

capture confirm file "datos crudos/enaho02-2014-2500.dta"
if _rc == 0 {
    use "datos crudos/enaho02-2014-2500.dta", clear

    * --- Armonizacion de nombres (Typos INEI) ---
    capture rename p713b14 p713b
    capture rename p713d14 p713d
    capture rename p713e14 p713e
    capture rename factor_07 factor07
    * --------------------------------------------

    * --- Estandarizacion extrema de llaves (Anti-Ceros y Espacios) ---
    foreach var in conglome vivienda hogar codperso codinfor { 
        capture confirm variable `var'
        if _rc == 0 {
            capture tostring `var', replace force
            capture replace `var' = trim(`var')
            capture destring `var', replace force
        }
    }
    * -----------------------------------------------------------------
    drop if missing(conglome) | missing(vivienda) | missing(hogar) | missing(codperso)
    duplicates drop
    bysort conglome vivienda hogar codperso: gen num_pecuario = _n
    tostring num_pecuario, generate(j_str)
    replace j_str = "_" + j_str
    drop num_pecuario

    * --- Ahorro de Memoria: Borrado Quirúrgico ---
    capture drop año
    capture drop a?o
    capture drop mes
    capture drop nconglome
    capture drop ubigeo
    capture drop dominio
    capture drop estrato
    capture drop periodo
    capture drop codinfor
    capture drop factor*
    capture drop factora*
    * ---------------------------------------------
    ds conglome vivienda hogar codperso j_str, not
    local vars `r(varlist)'
    foreach v of local vars {
        rename `v' v_`v'
    }
    ds conglome vivienda hogar codperso j_str, not
    local vars_wide `r(varlist)'
    reshape wide `vars_wide', i(conglome vivienda hogar codperso) j(j_str) string
    duplicates drop conglome vivienda hogar codperso, force
    save "datos crudos/enaho02-2014-2500_wide.dta", replace
}

capture confirm file "datos crudos/enaho02-2014-2600.dta"
if _rc == 0 {
    use "datos crudos/enaho02-2014-2600.dta", clear

    * --- Armonizacion de nombres (Typos INEI) ---
    capture rename p713b14 p713b
    capture rename p713d14 p713d
    capture rename p713e14 p713e
    capture rename factor_07 factor07
    * --------------------------------------------

    * --- Estandarizacion extrema de llaves (Anti-Ceros y Espacios) ---
    foreach var in conglome vivienda hogar codperso codinfor { 
        capture confirm variable `var'
        if _rc == 0 {
            capture tostring `var', replace force
            capture replace `var' = trim(`var')
            capture destring `var', replace force
        }
    }
    * -----------------------------------------------------------------
    drop if missing(conglome) | missing(vivienda) | missing(hogar) | missing(codperso)
    duplicates drop
    bysort conglome vivienda hogar codperso: gen num_subprod_pec = _n
    tostring num_subprod_pec, generate(j_str)
    replace j_str = "_" + j_str
    drop num_subprod_pec

    * --- Ahorro de Memoria: Borrado Quirúrgico ---
    capture drop año
    capture drop a?o
    capture drop mes
    capture drop nconglome
    capture drop ubigeo
    capture drop dominio
    capture drop estrato
    capture drop periodo
    capture drop codinfor
    capture drop factor*
    capture drop factora*
    * ---------------------------------------------
    ds conglome vivienda hogar codperso j_str, not
    local vars `r(varlist)'
    foreach v of local vars {
        rename `v' v_`v'
    }
    ds conglome vivienda hogar codperso j_str, not
    local vars_wide `r(varlist)'
    reshape wide `vars_wide', i(conglome vivienda hogar codperso) j(j_str) string
    duplicates drop conglome vivienda hogar codperso, force
    save "datos crudos/enaho02-2014-2600_wide.dta", replace
}

capture confirm file "datos crudos/enaho02-2014-2000.dta"
if _rc == 0 {
    use "datos crudos/enaho02-2014-2000.dta", clear

    * --- Armonizacion de nombres (Typos INEI) ---
    capture rename p713b14 p713b
    capture rename p713d14 p713d
    capture rename p713e14 p713e
    capture rename factor_07 factor07
    * --------------------------------------------

    * --- Estandarizacion extrema de llaves (Anti-Ceros y Espacios) ---
    foreach var in conglome vivienda hogar codperso codinfor { 
        capture confirm variable `var'
        if _rc == 0 {
            capture tostring `var', replace force
            capture replace `var' = trim(`var')
            capture destring `var', replace force
        }
    }
    * -----------------------------------------------------------------

    * --- Ahorro de Memoria: Borrado Quirúrgico ---
    capture drop año
    capture drop a?o
    capture drop mes
    capture drop nconglome
    capture drop ubigeo
    capture drop dominio
    capture drop estrato
    capture drop periodo
    capture drop codinfor
    capture drop factor*
    capture drop factora*
    * ---------------------------------------------
    drop if missing(conglome) | missing(vivienda) | missing(hogar) | missing(codperso)
    duplicates drop conglome vivienda hogar codperso, force
    save "datos crudos/enaho02-2014-2000_clean.dta", replace
}

capture confirm file "datos crudos/enaho02-2014-2400.dta"
if _rc == 0 {
    use "datos crudos/enaho02-2014-2400.dta", clear

    * --- Armonizacion de nombres (Typos INEI) ---
    capture rename p713b14 p713b
    capture rename p713d14 p713d
    capture rename p713e14 p713e
    capture rename factor_07 factor07
    * --------------------------------------------

    * --- Estandarizacion extrema de llaves (Anti-Ceros y Espacios) ---
    foreach var in conglome vivienda hogar codperso codinfor { 
        capture confirm variable `var'
        if _rc == 0 {
            capture tostring `var', replace force
            capture replace `var' = trim(`var')
            capture destring `var', replace force
        }
    }
    * -----------------------------------------------------------------

    * --- Ahorro de Memoria: Borrado Quirúrgico ---
    capture drop año
    capture drop a?o
    capture drop mes
    capture drop nconglome
    capture drop ubigeo
    capture drop dominio
    capture drop estrato
    capture drop periodo
    capture drop codinfor
    capture drop factor*
    capture drop factora*
    * ---------------------------------------------
    drop if missing(conglome) | missing(vivienda) | missing(hogar) | missing(codperso)
    duplicates drop conglome vivienda hogar codperso, force
    save "datos crudos/enaho02-2014-2400_clean.dta", replace
}

capture confirm file "datos crudos/enaho02-2014-2700.dta"
if _rc == 0 {
    use "datos crudos/enaho02-2014-2700.dta", clear

    * --- Armonizacion de nombres (Typos INEI) ---
    capture rename p713b14 p713b
    capture rename p713d14 p713d
    capture rename p713e14 p713e
    capture rename factor_07 factor07
    * --------------------------------------------

    * --- Estandarizacion extrema de llaves (Anti-Ceros y Espacios) ---
    foreach var in conglome vivienda hogar codperso codinfor { 
        capture confirm variable `var'
        if _rc == 0 {
            capture tostring `var', replace force
            capture replace `var' = trim(`var')
            capture destring `var', replace force
        }
    }
    * -----------------------------------------------------------------

    * --- Ahorro de Memoria: Borrado Quirúrgico ---
    capture drop año
    capture drop a?o
    capture drop mes
    capture drop nconglome
    capture drop ubigeo
    capture drop dominio
    capture drop estrato
    capture drop periodo
    capture drop codinfor
    capture drop factor*
    capture drop factora*
    * ---------------------------------------------
    drop if missing(conglome) | missing(vivienda) | missing(hogar) | missing(codperso)
    duplicates drop conglome vivienda hogar codperso, force
    save "datos crudos/enaho02-2014-2700_clean.dta", replace
}

use "datos crudos/enaho01-2014-200.dta", clear

    * --- Estandarizacion extrema de llaves (Anti-Ceros y Espacios) ---
    foreach var in conglome vivienda hogar codperso codinfor { 
        capture confirm variable `var'
        if _rc == 0 {
            capture tostring `var', replace force
            capture replace `var' = trim(`var')
            capture destring `var', replace force
        }
    }
    * -----------------------------------------------------------------
drop if missing(conglome) | missing(vivienda) | missing(hogar) | missing(codperso)
duplicates drop conglome vivienda hogar codperso, force

capture confirm file "datos crudos/enaho01a-2014-300_clean.dta"
if _rc == 0 {
    merge 1:1 conglome vivienda hogar codperso using "datos crudos/enaho01a-2014-300_clean.dta", force
    drop if _merge == 2
    drop _merge
}
capture confirm file "datos crudos/enaho01a-2014-400_clean.dta"
if _rc == 0 {
    merge 1:1 conglome vivienda hogar codperso using "datos crudos/enaho01a-2014-400_clean.dta", force
    drop if _merge == 2
    drop _merge
}
capture confirm file "datos crudos/enaho01a-2014-500_clean.dta"
if _rc == 0 {
    merge 1:1 conglome vivienda hogar codperso using "datos crudos/enaho01a-2014-500_clean.dta", force
    drop if _merge == 2
    drop _merge
}
capture confirm file "datos crudos/enaho01b-2014-1_clean.dta"
if _rc == 0 {
    merge 1:1 conglome vivienda hogar codperso using "datos crudos/enaho01b-2014-1_clean.dta", force
    drop if _merge == 2
    drop _merge
}
capture confirm file "datos crudos/enaho01b-2014-2_clean.dta"
if _rc == 0 {
    merge 1:1 conglome vivienda hogar codperso using "datos crudos/enaho01b-2014-2_clean.dta", force
    drop if _merge == 2
    drop _merge
}
capture confirm file "datos crudos/enaho01b-2014-3_clean.dta"
if _rc == 0 {
    merge 1:1 conglome vivienda hogar codperso using "datos crudos/enaho01b-2014-3_clean.dta", force
    drop if _merge == 2
    drop _merge
}
capture confirm file "datos crudos/enaho01-2014-700a_wide.dta"
if _rc == 0 {
    merge 1:1 conglome vivienda hogar codperso using "datos crudos/enaho01-2014-700a_wide.dta", force
    drop if _merge == 2
    drop _merge
}
capture confirm file "datos crudos/enaho01-2014-700b_wide.dta"
if _rc == 0 {
    merge 1:1 conglome vivienda hogar codperso using "datos crudos/enaho01-2014-700b_wide.dta", force
    drop if _merge == 2
    drop _merge
}
capture confirm file "datos crudos/enaho02-2014-2000_clean.dta"
if _rc == 0 {
    merge 1:1 conglome vivienda hogar codperso using "datos crudos/enaho02-2014-2000_clean.dta", force
    drop if _merge == 2
    drop _merge
}
capture confirm file "datos crudos/enaho02-2014-2000a_wide.dta"
if _rc == 0 {
    merge 1:1 conglome vivienda hogar codperso using "datos crudos/enaho02-2014-2000a_wide.dta", force
    drop if _merge == 2
    drop _merge
}
capture confirm file "datos crudos/enaho02-2014-2100_wide.dta"
if _rc == 0 {
    merge 1:1 conglome vivienda hogar codperso using "datos crudos/enaho02-2014-2100_wide.dta", force
    drop if _merge == 2
    drop _merge
}
capture confirm file "datos crudos/enaho02-2014-2200_wide.dta"
if _rc == 0 {
    merge 1:1 conglome vivienda hogar codperso using "datos crudos/enaho02-2014-2200_wide.dta", force
    drop if _merge == 2
    drop _merge
}
capture confirm file "datos crudos/enaho02-2014-2300_wide.dta"
if _rc == 0 {
    merge 1:1 conglome vivienda hogar codperso using "datos crudos/enaho02-2014-2300_wide.dta", force
    drop if _merge == 2
    drop _merge
}
capture confirm file "datos crudos/enaho02-2014-2400_clean.dta"
if _rc == 0 {
    merge 1:1 conglome vivienda hogar codperso using "datos crudos/enaho02-2014-2400_clean.dta", force
    drop if _merge == 2
    drop _merge
}
capture confirm file "datos crudos/enaho02-2014-2500_wide.dta"
if _rc == 0 {
    merge 1:1 conglome vivienda hogar codperso using "datos crudos/enaho02-2014-2500_wide.dta", force
    drop if _merge == 2
    drop _merge
}
capture confirm file "datos crudos/enaho02-2014-2600_wide.dta"
if _rc == 0 {
    merge 1:1 conglome vivienda hogar codperso using "datos crudos/enaho02-2014-2600_wide.dta", force
    drop if _merge == 2
    drop _merge
}
capture confirm file "datos crudos/enaho02-2014-2700_clean.dta"
if _rc == 0 {
    merge 1:1 conglome vivienda hogar codperso using "datos crudos/enaho02-2014-2700_clean.dta", force
    drop if _merge == 2
    drop _merge
}
save "datos crudos/temp_personas_2014.dta", replace

use "datos crudos/temp_personas_2014.dta", clear
capture confirm file "datos crudos/enaho01-2014-100_clean.dta"
if _rc == 0 {
    merge m:1 conglome vivienda hogar using "datos crudos/enaho01-2014-100_clean.dta", force
    drop if _merge == 2
    drop _merge
}
capture confirm file "datos crudos/enaho01-2014-700_clean.dta"
if _rc == 0 {
    merge m:1 conglome vivienda hogar using "datos crudos/enaho01-2014-700_clean.dta", force
    drop if _merge == 2
    drop _merge
}
capture confirm file "datos crudos/sumaria-2014_clean.dta"
if _rc == 0 {
    merge m:1 conglome vivienda hogar using "datos crudos/sumaria-2014_clean.dta", force
    drop if _merge == 2
    drop _merge
}
save "datos crudos/2014.dta", replace

use "datos crudos/2014.dta", clear
rename conglome con_14
rename vivienda viv_14
rename hogar hog_14
save "datos crudos/2014n.dta", replace

use "datos crudos/enaho01_2012_2016_100_panel.dta", clear
    * --- Armonizar llaves maestras del Panel Antiguo ---
    capture rename cenl numpanh
    capture rename num_hog numpanh
    * -----------------------------------------------------------
    * --- Armonizar nombres mutantes del Panel ---
    capture rename factor_07_14 factor07_14
    capture rename factor07_14_14 factor07_14
    capture rename factor07_14a factor07_14
    capture rename facpanel* fac_panel*
    * -----------------------------------------------------------
    * --- KEEP SEGURO (Evita error 111 si faltan variables) ---
    local keep_vars numpanh mes_14 conglome_14 vivienda_14 hogar_14 ubigeo_14 dominio_14 estrato_14 factor07_14
    foreach v in p101_14 p105a_14 tipenc_14 fecent_14 result_14 panel_14 periodo_14 {
        capture confirm variable `v'
        if _rc == 0 {
            local keep_vars `keep_vars' `v'
        }
    }
    foreach prefix in hpan hpanel fac_panel facpanel {
        capture ds `prefix'*
        if _rc == 0 {
            local keep_vars `keep_vars' `r(varlist)'
        }
    }
    local keep_vars: list uniq keep_vars
    keep `keep_vars'
    * -----------------------------------------------------------
rename conglome_14 con_14
rename vivienda_14 viv_14
rename hogar_14 hog_14
    * --- Estandarizacion extrema del Panel ---
    foreach var in con_14 viv_14 hog_14 numpanh {
        capture confirm variable `var'
        if _rc == 0 {
            capture tostring `var', replace force
            capture replace `var' = trim(`var')
            capture destring `var', replace force
        }
    }
capture destring mes_14, replace force
keep if inrange(mes_14, 1, 12)
drop if missing(con_14) | missing(viv_14) | missing(hog_14)
duplicates drop con_14 viv_14 hog_14, force
gen ID = 2014
merge 1:m con_14 viv_14 hog_14 using "datos crudos/2014n.dta", force
drop if _merge == 1
drop _merge
rename con_14 conglome
rename viv_14 vivienda
rename hog_14 hogar
save "resultados/2014_enahop.dta", replace

**************************************************
* PROCESANDO AÑO 2015
**************************************************

capture confirm file "datos crudos/enaho01-2015-100.dta"
if _rc == 0 {
    use "datos crudos/enaho01-2015-100.dta", clear

    * --- Armonizacion de nombres (Typos INEI) ---
    capture rename p713b15 p713b
    capture rename p713d15 p713d
    capture rename p713e15 p713e
    capture rename factor_07 factor07
    * --------------------------------------------

    * --- Estandarizacion extrema de llaves (Anti-Ceros y Espacios) ---
    foreach var in conglome vivienda hogar codperso codinfor { 
        capture confirm variable `var'
        if _rc == 0 {
            capture tostring `var', replace force
            capture replace `var' = trim(`var')
            capture destring `var', replace force
        }
    }
    * -----------------------------------------------------------------

    * --- Ahorro de Memoria: Borrado Quirúrgico ---
    capture drop año
    capture drop a?o
    capture drop mes
    capture drop nconglome
    capture drop ubigeo
    capture drop dominio
    capture drop estrato
    capture drop periodo
    capture drop codinfor
    capture drop factor*
    capture drop factora*
    * ---------------------------------------------
    drop if missing(conglome) | missing(vivienda) | missing(hogar)
    duplicates drop conglome vivienda hogar, force
    save "datos crudos/enaho01-2015-100_clean.dta", replace
}

capture confirm file "datos crudos/enaho01-2015-700.dta"
if _rc == 0 {
    use "datos crudos/enaho01-2015-700.dta", clear

    * --- Armonizacion de nombres (Typos INEI) ---
    capture rename p713b15 p713b
    capture rename p713d15 p713d
    capture rename p713e15 p713e
    capture rename factor_07 factor07
    * --------------------------------------------

    * --- Estandarizacion extrema de llaves (Anti-Ceros y Espacios) ---
    foreach var in conglome vivienda hogar codperso codinfor { 
        capture confirm variable `var'
        if _rc == 0 {
            capture tostring `var', replace force
            capture replace `var' = trim(`var')
            capture destring `var', replace force
        }
    }
    * -----------------------------------------------------------------

    * --- Ahorro de Memoria: Borrado Quirúrgico ---
    capture drop año
    capture drop a?o
    capture drop mes
    capture drop nconglome
    capture drop ubigeo
    capture drop dominio
    capture drop estrato
    capture drop periodo
    capture drop codinfor
    capture drop factor*
    capture drop factora*
    * ---------------------------------------------
    drop if missing(conglome) | missing(vivienda) | missing(hogar)
    duplicates drop conglome vivienda hogar, force
    save "datos crudos/enaho01-2015-700_clean.dta", replace
}

capture confirm file "datos crudos/sumaria-2015.dta"
if _rc == 0 {
    use "datos crudos/sumaria-2015.dta", clear

    * --- Armonizacion de nombres (Typos INEI) ---
    capture rename p713b15 p713b
    capture rename p713d15 p713d
    capture rename p713e15 p713e
    capture rename factor_07 factor07
    * --------------------------------------------

    * --- Estandarizacion extrema de llaves (Anti-Ceros y Espacios) ---
    foreach var in conglome vivienda hogar codperso codinfor { 
        capture confirm variable `var'
        if _rc == 0 {
            capture tostring `var', replace force
            capture replace `var' = trim(`var')
            capture destring `var', replace force
        }
    }
    * -----------------------------------------------------------------

    * --- Ahorro de Memoria: Borrado Quirúrgico ---
    capture drop año
    capture drop a?o
    capture drop mes
    capture drop nconglome
    capture drop ubigeo
    capture drop dominio
    capture drop estrato
    capture drop periodo
    capture drop codinfor
    capture drop factor*
    capture drop factora*
    * ---------------------------------------------
    drop if missing(conglome) | missing(vivienda) | missing(hogar)
    duplicates drop conglome vivienda hogar, force
    save "datos crudos/sumaria-2015_clean.dta", replace
}

capture confirm file "datos crudos/enaho01a-2015-300.dta"
if _rc == 0 {
    use "datos crudos/enaho01a-2015-300.dta", clear

    * --- Armonizacion de nombres (Typos INEI) ---
    capture rename p713b15 p713b
    capture rename p713d15 p713d
    capture rename p713e15 p713e
    capture rename factor_07 factor07
    * --------------------------------------------

    * --- Estandarizacion extrema de llaves (Anti-Ceros y Espacios) ---
    foreach var in conglome vivienda hogar codperso codinfor { 
        capture confirm variable `var'
        if _rc == 0 {
            capture tostring `var', replace force
            capture replace `var' = trim(`var')
            capture destring `var', replace force
        }
    }
    * -----------------------------------------------------------------

    * --- Ahorro de Memoria: Borrado Quirúrgico ---
    capture drop año
    capture drop a?o
    capture drop mes
    capture drop nconglome
    capture drop ubigeo
    capture drop dominio
    capture drop estrato
    capture drop periodo
    capture drop codinfor
    capture drop factor*
    capture drop factora*
    * ---------------------------------------------
    drop if missing(conglome) | missing(vivienda) | missing(hogar) | missing(codperso)
    duplicates drop conglome vivienda hogar codperso, force
    save "datos crudos/enaho01a-2015-300_clean.dta", replace
}

capture confirm file "datos crudos/enaho01a-2015-400.dta"
if _rc == 0 {
    use "datos crudos/enaho01a-2015-400.dta", clear

    * --- Armonizacion de nombres (Typos INEI) ---
    capture rename p713b15 p713b
    capture rename p713d15 p713d
    capture rename p713e15 p713e
    capture rename factor_07 factor07
    * --------------------------------------------

    * --- Estandarizacion extrema de llaves (Anti-Ceros y Espacios) ---
    foreach var in conglome vivienda hogar codperso codinfor { 
        capture confirm variable `var'
        if _rc == 0 {
            capture tostring `var', replace force
            capture replace `var' = trim(`var')
            capture destring `var', replace force
        }
    }
    * -----------------------------------------------------------------

    * --- Ahorro de Memoria: Borrado Quirúrgico ---
    capture drop año
    capture drop a?o
    capture drop mes
    capture drop nconglome
    capture drop ubigeo
    capture drop dominio
    capture drop estrato
    capture drop periodo
    capture drop codinfor
    capture drop factor*
    capture drop factora*
    * ---------------------------------------------
    drop if missing(conglome) | missing(vivienda) | missing(hogar) | missing(codperso)
    duplicates drop conglome vivienda hogar codperso, force
    save "datos crudos/enaho01a-2015-400_clean.dta", replace
}

capture confirm file "datos crudos/enaho01a-2015-500.dta"
if _rc == 0 {
    use "datos crudos/enaho01a-2015-500.dta", clear

    * --- Armonizacion de nombres (Typos INEI) ---
    capture rename p713b15 p713b
    capture rename p713d15 p713d
    capture rename p713e15 p713e
    capture rename factor_07 factor07
    * --------------------------------------------

    * --- Estandarizacion extrema de llaves (Anti-Ceros y Espacios) ---
    foreach var in conglome vivienda hogar codperso codinfor { 
        capture confirm variable `var'
        if _rc == 0 {
            capture tostring `var', replace force
            capture replace `var' = trim(`var')
            capture destring `var', replace force
        }
    }
    * -----------------------------------------------------------------

    * --- Ahorro de Memoria: Borrado Quirúrgico ---
    capture drop año
    capture drop a?o
    capture drop mes
    capture drop nconglome
    capture drop ubigeo
    capture drop dominio
    capture drop estrato
    capture drop periodo
    capture drop codinfor
    capture drop factor*
    capture drop factora*
    * ---------------------------------------------
    drop if missing(conglome) | missing(vivienda) | missing(hogar) | missing(codperso)
    duplicates drop conglome vivienda hogar codperso, force
    save "datos crudos/enaho01a-2015-500_clean.dta", replace
}

capture confirm file "datos crudos/enaho01b-2015-1.dta"
if _rc == 0 {
    use "datos crudos/enaho01b-2015-1.dta", clear

    * --- Armonizacion de nombres (Typos INEI) ---
    capture rename p713b15 p713b
    capture rename p713d15 p713d
    capture rename p713e15 p713e
    capture rename factor_07 factor07
    * --------------------------------------------

    * --- Estandarizacion extrema de llaves (Anti-Ceros y Espacios) ---
    foreach var in conglome vivienda hogar codperso codinfor { 
        capture confirm variable `var'
        if _rc == 0 {
            capture tostring `var', replace force
            capture replace `var' = trim(`var')
            capture destring `var', replace force
        }
    }
    * -----------------------------------------------------------------

    * --- Ahorro de Memoria: Borrado Quirúrgico ---
    capture drop año
    capture drop a?o
    capture drop mes
    capture drop nconglome
    capture drop ubigeo
    capture drop dominio
    capture drop estrato
    capture drop periodo
    capture drop codinfor
    capture drop factor*
    capture drop factora*
    * ---------------------------------------------
    drop if missing(conglome) | missing(vivienda) | missing(hogar) | missing(codperso)
    duplicates drop conglome vivienda hogar codperso, force
    save "datos crudos/enaho01b-2015-1_clean.dta", replace
}

capture confirm file "datos crudos/enaho01b-2015-2.dta"
if _rc == 0 {
    use "datos crudos/enaho01b-2015-2.dta", clear

    * --- Armonizacion de nombres (Typos INEI) ---
    capture rename p713b15 p713b
    capture rename p713d15 p713d
    capture rename p713e15 p713e
    capture rename factor_07 factor07
    * --------------------------------------------

    * --- Estandarizacion extrema de llaves (Anti-Ceros y Espacios) ---
    foreach var in conglome vivienda hogar codperso codinfor { 
        capture confirm variable `var'
        if _rc == 0 {
            capture tostring `var', replace force
            capture replace `var' = trim(`var')
            capture destring `var', replace force
        }
    }
    * -----------------------------------------------------------------

    * --- Ahorro de Memoria: Borrado Quirúrgico ---
    capture drop año
    capture drop a?o
    capture drop mes
    capture drop nconglome
    capture drop ubigeo
    capture drop dominio
    capture drop estrato
    capture drop periodo
    capture drop codinfor
    capture drop factor*
    capture drop factora*
    * ---------------------------------------------
    drop if missing(conglome) | missing(vivienda) | missing(hogar) | missing(codperso)
    duplicates drop conglome vivienda hogar codperso, force
    save "datos crudos/enaho01b-2015-2_clean.dta", replace
}

capture confirm file "datos crudos/enaho01b-2015-3.dta"
if _rc == 0 {
    use "datos crudos/enaho01b-2015-3.dta", clear

    * --- Armonizacion de nombres (Typos INEI) ---
    capture rename p713b15 p713b
    capture rename p713d15 p713d
    capture rename p713e15 p713e
    capture rename factor_07 factor07
    * --------------------------------------------

    * --- Estandarizacion extrema de llaves (Anti-Ceros y Espacios) ---
    foreach var in conglome vivienda hogar codperso codinfor { 
        capture confirm variable `var'
        if _rc == 0 {
            capture tostring `var', replace force
            capture replace `var' = trim(`var')
            capture destring `var', replace force
        }
    }
    * -----------------------------------------------------------------

    * --- Ahorro de Memoria: Borrado Quirúrgico ---
    capture drop año
    capture drop a?o
    capture drop mes
    capture drop nconglome
    capture drop ubigeo
    capture drop dominio
    capture drop estrato
    capture drop periodo
    capture drop codinfor
    capture drop factor*
    capture drop factora*
    * ---------------------------------------------
    drop if missing(conglome) | missing(vivienda) | missing(hogar) | missing(codperso)
    duplicates drop conglome vivienda hogar codperso, force
    save "datos crudos/enaho01b-2015-3_clean.dta", replace
}

capture confirm file "datos crudos/enaho01-2015-700a.dta"
if _rc == 0 {
    use "datos crudos/enaho01-2015-700a.dta", clear

    * --- Armonizacion de nombres (Typos INEI) ---
    capture rename p713b15 p713b
    capture rename p713d15 p713d
    capture rename p713e15 p713e
    capture rename factor_07 factor07
    * --------------------------------------------
    capture rename p702 codperso
    capture tostring codperso, replace force
    capture tostring codinfor, replace force
    capture replace codperso = trim(codperso)
    capture replace codinfor = trim(codinfor)
    capture replace codperso = codinfor if codperso == "" | codperso == "."

    * --- Estandarizacion extrema de llaves (Anti-Ceros y Espacios) ---
    foreach var in conglome vivienda hogar codperso codinfor { 
        capture confirm variable `var'
        if _rc == 0 {
            capture tostring `var', replace force
            capture replace `var' = trim(`var')
            capture destring `var', replace force
        }
    }
    * -----------------------------------------------------------------
    gen programa_social1 = 0
    replace programa_social1 = 1 if inlist(p703,1,2,3,4,5,6,7,8,10)
    drop if missing(conglome) | missing(vivienda) | missing(hogar) | missing(codperso)
    duplicates drop conglome vivienda hogar codperso p703, force
    bysort conglome vivienda hogar codperso: gen num_item = _n
    tostring num_item, generate(j_str)
    replace j_str = "_" + j_str
    drop num_item

    * --- Ahorro de Memoria: Borrado Quirúrgico ---
    capture drop año
    capture drop a?o
    capture drop mes
    capture drop nconglome
    capture drop ubigeo
    capture drop dominio
    capture drop estrato
    capture drop periodo
    capture drop codinfor
    capture drop factor*
    capture drop factora*
    * ---------------------------------------------
    ds conglome vivienda hogar codperso j_str, not
    local vars `r(varlist)'
    foreach v of local vars {
        rename `v' v_`v'
    }
    ds conglome vivienda hogar codperso j_str, not
    local vars_wide `r(varlist)'
    reshape wide `vars_wide', i(conglome vivienda hogar codperso) j(j_str) string
    duplicates drop conglome vivienda hogar codperso, force
    save "datos crudos/enaho01-2015-700a_wide.dta", replace
}

capture confirm file "datos crudos/enaho01-2015-700b.dta"
if _rc == 0 {
    use "datos crudos/enaho01-2015-700b.dta", clear

    * --- Armonizacion de nombres (Typos INEI) ---
    capture rename p713b15 p713b
    capture rename p713d15 p713d
    capture rename p713e15 p713e
    capture rename factor_07 factor07
    * --------------------------------------------
    capture rename p711n codperso
    capture tostring codperso, replace force
    capture tostring codinfor, replace force
    capture replace codperso = trim(codperso)
    capture replace codinfor = trim(codinfor)
    capture replace codperso = codinfor if codperso == "" | codperso == "."

    * --- Estandarizacion extrema de llaves (Anti-Ceros y Espacios) ---
    foreach var in conglome vivienda hogar codperso codinfor { 
        capture confirm variable `var'
        if _rc == 0 {
            capture tostring `var', replace force
            capture replace `var' = trim(`var')
            capture destring `var', replace force
        }
    }
    * -----------------------------------------------------------------
    gen programa_social2 = 0
    replace programa_social2 = 1 if inlist(p712,1,2,3,4,5,6,7,8,9,10,11,12,13,15,16,17,18,19,29,30)
    capture gen periodo_prog15 = p713d - p713b
    drop if missing(conglome) | missing(vivienda) | missing(hogar) | missing(codperso)
    duplicates drop conglome vivienda hogar codperso p712, force
    bysort conglome vivienda hogar codperso: gen num_item = _n
    tostring num_item, generate(j_str)
    replace j_str = "_" + j_str
    drop num_item

    * --- Ahorro de Memoria: Borrado Quirúrgico ---
    capture drop año
    capture drop a?o
    capture drop mes
    capture drop nconglome
    capture drop ubigeo
    capture drop dominio
    capture drop estrato
    capture drop periodo
    capture drop codinfor
    capture drop factor*
    capture drop factora*
    * ---------------------------------------------
    ds conglome vivienda hogar codperso j_str, not
    local vars `r(varlist)'
    foreach v of local vars {
        rename `v' v_`v'
    }
    ds conglome vivienda hogar codperso j_str, not
    local vars_wide `r(varlist)'
    reshape wide `vars_wide', i(conglome vivienda hogar codperso) j(j_str) string
    duplicates drop conglome vivienda hogar codperso, force
    save "datos crudos/enaho01-2015-700b_wide.dta", replace
}

capture confirm file "datos crudos/enaho02-2015-2000a.dta"
if _rc == 0 {
    use "datos crudos/enaho02-2015-2000a.dta", clear

    * --- Armonizacion de nombres (Typos INEI) ---
    capture rename p713b15 p713b
    capture rename p713d15 p713d
    capture rename p713e15 p713e
    capture rename factor_07 factor07
    * --------------------------------------------

    * --- Estandarizacion extrema de llaves (Anti-Ceros y Espacios) ---
    foreach var in conglome vivienda hogar codperso codinfor { 
        capture confirm variable `var'
        if _rc == 0 {
            capture tostring `var', replace force
            capture replace `var' = trim(`var')
            capture destring `var', replace force
        }
    }
    * -----------------------------------------------------------------
    drop if missing(conglome) | missing(vivienda) | missing(hogar) | missing(codperso)
    duplicates drop
    bysort conglome vivienda hogar codperso: gen num_parcela = _n
    tostring num_parcela, generate(j_str)
    replace j_str = "_" + j_str
    drop num_parcela

    * --- Ahorro de Memoria: Borrado Quirúrgico ---
    capture drop año
    capture drop a?o
    capture drop mes
    capture drop nconglome
    capture drop ubigeo
    capture drop dominio
    capture drop estrato
    capture drop periodo
    capture drop codinfor
    capture drop factor*
    capture drop factora*
    * ---------------------------------------------
    ds conglome vivienda hogar codperso j_str, not
    local vars `r(varlist)'
    foreach v of local vars {
        rename `v' v_`v'
    }
    ds conglome vivienda hogar codperso j_str, not
    local vars_wide `r(varlist)'
    reshape wide `vars_wide', i(conglome vivienda hogar codperso) j(j_str) string
    duplicates drop conglome vivienda hogar codperso, force
    save "datos crudos/enaho02-2015-2000a_wide.dta", replace
}

capture confirm file "datos crudos/enaho02-2015-2100.dta"
if _rc == 0 {
    use "datos crudos/enaho02-2015-2100.dta", clear

    * --- Armonizacion de nombres (Typos INEI) ---
    capture rename p713b15 p713b
    capture rename p713d15 p713d
    capture rename p713e15 p713e
    capture rename factor_07 factor07
    * --------------------------------------------

    * --- Estandarizacion extrema de llaves (Anti-Ceros y Espacios) ---
    foreach var in conglome vivienda hogar codperso codinfor { 
        capture confirm variable `var'
        if _rc == 0 {
            capture tostring `var', replace force
            capture replace `var' = trim(`var')
            capture destring `var', replace force
        }
    }
    * -----------------------------------------------------------------
    drop if missing(conglome) | missing(vivienda) | missing(hogar) | missing(codperso)
    duplicates drop
    bysort conglome vivienda hogar codperso: gen num_cultivo = _n
    tostring num_cultivo, generate(j_str)
    replace j_str = "_" + j_str
    drop num_cultivo

    * --- Ahorro de Memoria: Borrado Quirúrgico ---
    capture drop año
    capture drop a?o
    capture drop mes
    capture drop nconglome
    capture drop ubigeo
    capture drop dominio
    capture drop estrato
    capture drop periodo
    capture drop codinfor
    capture drop factor*
    capture drop factora*
    * ---------------------------------------------
    ds conglome vivienda hogar codperso j_str, not
    local vars `r(varlist)'
    foreach v of local vars {
        rename `v' v_`v'
    }
    ds conglome vivienda hogar codperso j_str, not
    local vars_wide `r(varlist)'
    reshape wide `vars_wide', i(conglome vivienda hogar codperso) j(j_str) string
    duplicates drop conglome vivienda hogar codperso, force
    save "datos crudos/enaho02-2015-2100_wide.dta", replace
}

capture confirm file "datos crudos/enaho02-2015-2200.dta"
if _rc == 0 {
    use "datos crudos/enaho02-2015-2200.dta", clear

    * --- Armonizacion de nombres (Typos INEI) ---
    capture rename p713b15 p713b
    capture rename p713d15 p713d
    capture rename p713e15 p713e
    capture rename factor_07 factor07
    * --------------------------------------------

    * --- Estandarizacion extrema de llaves (Anti-Ceros y Espacios) ---
    foreach var in conglome vivienda hogar codperso codinfor { 
        capture confirm variable `var'
        if _rc == 0 {
            capture tostring `var', replace force
            capture replace `var' = trim(`var')
            capture destring `var', replace force
        }
    }
    * -----------------------------------------------------------------
    drop if missing(conglome) | missing(vivienda) | missing(hogar) | missing(codperso)
    duplicates drop
    bysort conglome vivienda hogar codperso: gen num_subprod_agri = _n
    tostring num_subprod_agri, generate(j_str)
    replace j_str = "_" + j_str
    drop num_subprod_agri

    * --- Ahorro de Memoria: Borrado Quirúrgico ---
    capture drop año
    capture drop a?o
    capture drop mes
    capture drop nconglome
    capture drop ubigeo
    capture drop dominio
    capture drop estrato
    capture drop periodo
    capture drop codinfor
    capture drop factor*
    capture drop factora*
    * ---------------------------------------------
    ds conglome vivienda hogar codperso j_str, not
    local vars `r(varlist)'
    foreach v of local vars {
        rename `v' v_`v'
    }
    ds conglome vivienda hogar codperso j_str, not
    local vars_wide `r(varlist)'
    reshape wide `vars_wide', i(conglome vivienda hogar codperso) j(j_str) string
    duplicates drop conglome vivienda hogar codperso, force
    save "datos crudos/enaho02-2015-2200_wide.dta", replace
}

capture confirm file "datos crudos/enaho02-2015-2300.dta"
if _rc == 0 {
    use "datos crudos/enaho02-2015-2300.dta", clear

    * --- Armonizacion de nombres (Typos INEI) ---
    capture rename p713b15 p713b
    capture rename p713d15 p713d
    capture rename p713e15 p713e
    capture rename factor_07 factor07
    * --------------------------------------------

    * --- Estandarizacion extrema de llaves (Anti-Ceros y Espacios) ---
    foreach var in conglome vivienda hogar codperso codinfor { 
        capture confirm variable `var'
        if _rc == 0 {
            capture tostring `var', replace force
            capture replace `var' = trim(`var')
            capture destring `var', replace force
        }
    }
    * -----------------------------------------------------------------
    drop if missing(conglome) | missing(vivienda) | missing(hogar) | missing(codperso)
    duplicates drop
    bysort conglome vivienda hogar codperso: gen num_forestal = _n
    tostring num_forestal, generate(j_str)
    replace j_str = "_" + j_str
    drop num_forestal

    * --- Ahorro de Memoria: Borrado Quirúrgico ---
    capture drop año
    capture drop a?o
    capture drop mes
    capture drop nconglome
    capture drop ubigeo
    capture drop dominio
    capture drop estrato
    capture drop periodo
    capture drop codinfor
    capture drop factor*
    capture drop factora*
    * ---------------------------------------------
    ds conglome vivienda hogar codperso j_str, not
    local vars `r(varlist)'
    foreach v of local vars {
        rename `v' v_`v'
    }
    ds conglome vivienda hogar codperso j_str, not
    local vars_wide `r(varlist)'
    reshape wide `vars_wide', i(conglome vivienda hogar codperso) j(j_str) string
    duplicates drop conglome vivienda hogar codperso, force
    save "datos crudos/enaho02-2015-2300_wide.dta", replace
}

capture confirm file "datos crudos/enaho02-2015-2500.dta"
if _rc == 0 {
    use "datos crudos/enaho02-2015-2500.dta", clear

    * --- Armonizacion de nombres (Typos INEI) ---
    capture rename p713b15 p713b
    capture rename p713d15 p713d
    capture rename p713e15 p713e
    capture rename factor_07 factor07
    * --------------------------------------------

    * --- Estandarizacion extrema de llaves (Anti-Ceros y Espacios) ---
    foreach var in conglome vivienda hogar codperso codinfor { 
        capture confirm variable `var'
        if _rc == 0 {
            capture tostring `var', replace force
            capture replace `var' = trim(`var')
            capture destring `var', replace force
        }
    }
    * -----------------------------------------------------------------
    drop if missing(conglome) | missing(vivienda) | missing(hogar) | missing(codperso)
    duplicates drop
    bysort conglome vivienda hogar codperso: gen num_pecuario = _n
    tostring num_pecuario, generate(j_str)
    replace j_str = "_" + j_str
    drop num_pecuario

    * --- Ahorro de Memoria: Borrado Quirúrgico ---
    capture drop año
    capture drop a?o
    capture drop mes
    capture drop nconglome
    capture drop ubigeo
    capture drop dominio
    capture drop estrato
    capture drop periodo
    capture drop codinfor
    capture drop factor*
    capture drop factora*
    * ---------------------------------------------
    ds conglome vivienda hogar codperso j_str, not
    local vars `r(varlist)'
    foreach v of local vars {
        rename `v' v_`v'
    }
    ds conglome vivienda hogar codperso j_str, not
    local vars_wide `r(varlist)'
    reshape wide `vars_wide', i(conglome vivienda hogar codperso) j(j_str) string
    duplicates drop conglome vivienda hogar codperso, force
    save "datos crudos/enaho02-2015-2500_wide.dta", replace
}

capture confirm file "datos crudos/enaho02-2015-2600.dta"
if _rc == 0 {
    use "datos crudos/enaho02-2015-2600.dta", clear

    * --- Armonizacion de nombres (Typos INEI) ---
    capture rename p713b15 p713b
    capture rename p713d15 p713d
    capture rename p713e15 p713e
    capture rename factor_07 factor07
    * --------------------------------------------

    * --- Estandarizacion extrema de llaves (Anti-Ceros y Espacios) ---
    foreach var in conglome vivienda hogar codperso codinfor { 
        capture confirm variable `var'
        if _rc == 0 {
            capture tostring `var', replace force
            capture replace `var' = trim(`var')
            capture destring `var', replace force
        }
    }
    * -----------------------------------------------------------------
    drop if missing(conglome) | missing(vivienda) | missing(hogar) | missing(codperso)
    duplicates drop
    bysort conglome vivienda hogar codperso: gen num_subprod_pec = _n
    tostring num_subprod_pec, generate(j_str)
    replace j_str = "_" + j_str
    drop num_subprod_pec

    * --- Ahorro de Memoria: Borrado Quirúrgico ---
    capture drop año
    capture drop a?o
    capture drop mes
    capture drop nconglome
    capture drop ubigeo
    capture drop dominio
    capture drop estrato
    capture drop periodo
    capture drop codinfor
    capture drop factor*
    capture drop factora*
    * ---------------------------------------------
    ds conglome vivienda hogar codperso j_str, not
    local vars `r(varlist)'
    foreach v of local vars {
        rename `v' v_`v'
    }
    ds conglome vivienda hogar codperso j_str, not
    local vars_wide `r(varlist)'
    reshape wide `vars_wide', i(conglome vivienda hogar codperso) j(j_str) string
    duplicates drop conglome vivienda hogar codperso, force
    save "datos crudos/enaho02-2015-2600_wide.dta", replace
}

capture confirm file "datos crudos/enaho02-2015-2000.dta"
if _rc == 0 {
    use "datos crudos/enaho02-2015-2000.dta", clear

    * --- Armonizacion de nombres (Typos INEI) ---
    capture rename p713b15 p713b
    capture rename p713d15 p713d
    capture rename p713e15 p713e
    capture rename factor_07 factor07
    * --------------------------------------------

    * --- Estandarizacion extrema de llaves (Anti-Ceros y Espacios) ---
    foreach var in conglome vivienda hogar codperso codinfor { 
        capture confirm variable `var'
        if _rc == 0 {
            capture tostring `var', replace force
            capture replace `var' = trim(`var')
            capture destring `var', replace force
        }
    }
    * -----------------------------------------------------------------

    * --- Ahorro de Memoria: Borrado Quirúrgico ---
    capture drop año
    capture drop a?o
    capture drop mes
    capture drop nconglome
    capture drop ubigeo
    capture drop dominio
    capture drop estrato
    capture drop periodo
    capture drop codinfor
    capture drop factor*
    capture drop factora*
    * ---------------------------------------------
    drop if missing(conglome) | missing(vivienda) | missing(hogar) | missing(codperso)
    duplicates drop conglome vivienda hogar codperso, force
    save "datos crudos/enaho02-2015-2000_clean.dta", replace
}

capture confirm file "datos crudos/enaho02-2015-2400.dta"
if _rc == 0 {
    use "datos crudos/enaho02-2015-2400.dta", clear

    * --- Armonizacion de nombres (Typos INEI) ---
    capture rename p713b15 p713b
    capture rename p713d15 p713d
    capture rename p713e15 p713e
    capture rename factor_07 factor07
    * --------------------------------------------

    * --- Estandarizacion extrema de llaves (Anti-Ceros y Espacios) ---
    foreach var in conglome vivienda hogar codperso codinfor { 
        capture confirm variable `var'
        if _rc == 0 {
            capture tostring `var', replace force
            capture replace `var' = trim(`var')
            capture destring `var', replace force
        }
    }
    * -----------------------------------------------------------------

    * --- Ahorro de Memoria: Borrado Quirúrgico ---
    capture drop año
    capture drop a?o
    capture drop mes
    capture drop nconglome
    capture drop ubigeo
    capture drop dominio
    capture drop estrato
    capture drop periodo
    capture drop codinfor
    capture drop factor*
    capture drop factora*
    * ---------------------------------------------
    drop if missing(conglome) | missing(vivienda) | missing(hogar) | missing(codperso)
    duplicates drop conglome vivienda hogar codperso, force
    save "datos crudos/enaho02-2015-2400_clean.dta", replace
}

capture confirm file "datos crudos/enaho02-2015-2700.dta"
if _rc == 0 {
    use "datos crudos/enaho02-2015-2700.dta", clear

    * --- Armonizacion de nombres (Typos INEI) ---
    capture rename p713b15 p713b
    capture rename p713d15 p713d
    capture rename p713e15 p713e
    capture rename factor_07 factor07
    * --------------------------------------------

    * --- Estandarizacion extrema de llaves (Anti-Ceros y Espacios) ---
    foreach var in conglome vivienda hogar codperso codinfor { 
        capture confirm variable `var'
        if _rc == 0 {
            capture tostring `var', replace force
            capture replace `var' = trim(`var')
            capture destring `var', replace force
        }
    }
    * -----------------------------------------------------------------

    * --- Ahorro de Memoria: Borrado Quirúrgico ---
    capture drop año
    capture drop a?o
    capture drop mes
    capture drop nconglome
    capture drop ubigeo
    capture drop dominio
    capture drop estrato
    capture drop periodo
    capture drop codinfor
    capture drop factor*
    capture drop factora*
    * ---------------------------------------------
    drop if missing(conglome) | missing(vivienda) | missing(hogar) | missing(codperso)
    duplicates drop conglome vivienda hogar codperso, force
    save "datos crudos/enaho02-2015-2700_clean.dta", replace
}

use "datos crudos/enaho01-2015-200.dta", clear

    * --- Estandarizacion extrema de llaves (Anti-Ceros y Espacios) ---
    foreach var in conglome vivienda hogar codperso codinfor { 
        capture confirm variable `var'
        if _rc == 0 {
            capture tostring `var', replace force
            capture replace `var' = trim(`var')
            capture destring `var', replace force
        }
    }
    * -----------------------------------------------------------------
drop if missing(conglome) | missing(vivienda) | missing(hogar) | missing(codperso)
duplicates drop conglome vivienda hogar codperso, force

capture confirm file "datos crudos/enaho01a-2015-300_clean.dta"
if _rc == 0 {
    merge 1:1 conglome vivienda hogar codperso using "datos crudos/enaho01a-2015-300_clean.dta", force
    drop if _merge == 2
    drop _merge
}
capture confirm file "datos crudos/enaho01a-2015-400_clean.dta"
if _rc == 0 {
    merge 1:1 conglome vivienda hogar codperso using "datos crudos/enaho01a-2015-400_clean.dta", force
    drop if _merge == 2
    drop _merge
}
capture confirm file "datos crudos/enaho01a-2015-500_clean.dta"
if _rc == 0 {
    merge 1:1 conglome vivienda hogar codperso using "datos crudos/enaho01a-2015-500_clean.dta", force
    drop if _merge == 2
    drop _merge
}
capture confirm file "datos crudos/enaho01b-2015-1_clean.dta"
if _rc == 0 {
    merge 1:1 conglome vivienda hogar codperso using "datos crudos/enaho01b-2015-1_clean.dta", force
    drop if _merge == 2
    drop _merge
}
capture confirm file "datos crudos/enaho01b-2015-2_clean.dta"
if _rc == 0 {
    merge 1:1 conglome vivienda hogar codperso using "datos crudos/enaho01b-2015-2_clean.dta", force
    drop if _merge == 2
    drop _merge
}
capture confirm file "datos crudos/enaho01b-2015-3_clean.dta"
if _rc == 0 {
    merge 1:1 conglome vivienda hogar codperso using "datos crudos/enaho01b-2015-3_clean.dta", force
    drop if _merge == 2
    drop _merge
}
capture confirm file "datos crudos/enaho01-2015-700a_wide.dta"
if _rc == 0 {
    merge 1:1 conglome vivienda hogar codperso using "datos crudos/enaho01-2015-700a_wide.dta", force
    drop if _merge == 2
    drop _merge
}
capture confirm file "datos crudos/enaho01-2015-700b_wide.dta"
if _rc == 0 {
    merge 1:1 conglome vivienda hogar codperso using "datos crudos/enaho01-2015-700b_wide.dta", force
    drop if _merge == 2
    drop _merge
}
capture confirm file "datos crudos/enaho02-2015-2000_clean.dta"
if _rc == 0 {
    merge 1:1 conglome vivienda hogar codperso using "datos crudos/enaho02-2015-2000_clean.dta", force
    drop if _merge == 2
    drop _merge
}
capture confirm file "datos crudos/enaho02-2015-2000a_wide.dta"
if _rc == 0 {
    merge 1:1 conglome vivienda hogar codperso using "datos crudos/enaho02-2015-2000a_wide.dta", force
    drop if _merge == 2
    drop _merge
}
capture confirm file "datos crudos/enaho02-2015-2100_wide.dta"
if _rc == 0 {
    merge 1:1 conglome vivienda hogar codperso using "datos crudos/enaho02-2015-2100_wide.dta", force
    drop if _merge == 2
    drop _merge
}
capture confirm file "datos crudos/enaho02-2015-2200_wide.dta"
if _rc == 0 {
    merge 1:1 conglome vivienda hogar codperso using "datos crudos/enaho02-2015-2200_wide.dta", force
    drop if _merge == 2
    drop _merge
}
capture confirm file "datos crudos/enaho02-2015-2300_wide.dta"
if _rc == 0 {
    merge 1:1 conglome vivienda hogar codperso using "datos crudos/enaho02-2015-2300_wide.dta", force
    drop if _merge == 2
    drop _merge
}
capture confirm file "datos crudos/enaho02-2015-2400_clean.dta"
if _rc == 0 {
    merge 1:1 conglome vivienda hogar codperso using "datos crudos/enaho02-2015-2400_clean.dta", force
    drop if _merge == 2
    drop _merge
}
capture confirm file "datos crudos/enaho02-2015-2500_wide.dta"
if _rc == 0 {
    merge 1:1 conglome vivienda hogar codperso using "datos crudos/enaho02-2015-2500_wide.dta", force
    drop if _merge == 2
    drop _merge
}
capture confirm file "datos crudos/enaho02-2015-2600_wide.dta"
if _rc == 0 {
    merge 1:1 conglome vivienda hogar codperso using "datos crudos/enaho02-2015-2600_wide.dta", force
    drop if _merge == 2
    drop _merge
}
capture confirm file "datos crudos/enaho02-2015-2700_clean.dta"
if _rc == 0 {
    merge 1:1 conglome vivienda hogar codperso using "datos crudos/enaho02-2015-2700_clean.dta", force
    drop if _merge == 2
    drop _merge
}
save "datos crudos/temp_personas_2015.dta", replace

use "datos crudos/temp_personas_2015.dta", clear
capture confirm file "datos crudos/enaho01-2015-100_clean.dta"
if _rc == 0 {
    merge m:1 conglome vivienda hogar using "datos crudos/enaho01-2015-100_clean.dta", force
    drop if _merge == 2
    drop _merge
}
capture confirm file "datos crudos/enaho01-2015-700_clean.dta"
if _rc == 0 {
    merge m:1 conglome vivienda hogar using "datos crudos/enaho01-2015-700_clean.dta", force
    drop if _merge == 2
    drop _merge
}
capture confirm file "datos crudos/sumaria-2015_clean.dta"
if _rc == 0 {
    merge m:1 conglome vivienda hogar using "datos crudos/sumaria-2015_clean.dta", force
    drop if _merge == 2
    drop _merge
}
save "datos crudos/2015.dta", replace

use "datos crudos/2015.dta", clear
rename conglome con_15
rename vivienda viv_15
rename hogar hog_15
save "datos crudos/2015n.dta", replace

use "datos crudos/enaho01_2012_2016_100_panel.dta", clear
    * --- Armonizar llaves maestras del Panel Antiguo ---
    capture rename cenl numpanh
    capture rename num_hog numpanh
    * -----------------------------------------------------------
    * --- Armonizar nombres mutantes del Panel ---
    capture rename factor_07_15 factor07_15
    capture rename factor07_15_15 factor07_15
    capture rename factor07_15a factor07_15
    capture rename facpanel* fac_panel*
    * -----------------------------------------------------------
    * --- KEEP SEGURO (Evita error 111 si faltan variables) ---
    local keep_vars numpanh mes_15 conglome_15 vivienda_15 hogar_15 ubigeo_15 dominio_15 estrato_15 factor07_15
    foreach v in p101_15 p105a_15 tipenc_15 fecent_15 result_15 panel_15 periodo_15 {
        capture confirm variable `v'
        if _rc == 0 {
            local keep_vars `keep_vars' `v'
        }
    }
    foreach prefix in hpan hpanel fac_panel facpanel {
        capture ds `prefix'*
        if _rc == 0 {
            local keep_vars `keep_vars' `r(varlist)'
        }
    }
    local keep_vars: list uniq keep_vars
    keep `keep_vars'
    * -----------------------------------------------------------
rename conglome_15 con_15
rename vivienda_15 viv_15
rename hogar_15 hog_15
    * --- Estandarizacion extrema del Panel ---
    foreach var in con_15 viv_15 hog_15 numpanh {
        capture confirm variable `var'
        if _rc == 0 {
            capture tostring `var', replace force
            capture replace `var' = trim(`var')
            capture destring `var', replace force
        }
    }
capture destring mes_15, replace force
keep if inrange(mes_15, 1, 12)
drop if missing(con_15) | missing(viv_15) | missing(hog_15)
duplicates drop con_15 viv_15 hog_15, force
gen ID = 2015
merge 1:m con_15 viv_15 hog_15 using "datos crudos/2015n.dta", force
drop if _merge == 1
drop _merge
rename con_15 conglome
rename viv_15 vivienda
rename hog_15 hogar
save "resultados/2015_enahop.dta", replace

**************************************************
* PROCESANDO AÑO 2016
**************************************************

capture confirm file "datos crudos/enaho01-2016-100.dta"
if _rc == 0 {
    use "datos crudos/enaho01-2016-100.dta", clear

    * --- Armonizacion de nombres (Typos INEI) ---
    capture rename p713b16 p713b
    capture rename p713d16 p713d
    capture rename p713e16 p713e
    capture rename factor_07 factor07
    * --------------------------------------------

    * --- Estandarizacion extrema de llaves (Anti-Ceros y Espacios) ---
    foreach var in conglome vivienda hogar codperso codinfor { 
        capture confirm variable `var'
        if _rc == 0 {
            capture tostring `var', replace force
            capture replace `var' = trim(`var')
            capture destring `var', replace force
        }
    }
    * -----------------------------------------------------------------

    * --- Ahorro de Memoria: Borrado Quirúrgico ---
    capture drop año
    capture drop a?o
    capture drop mes
    capture drop nconglome
    capture drop ubigeo
    capture drop dominio
    capture drop estrato
    capture drop periodo
    capture drop codinfor
    capture drop factor*
    capture drop factora*
    * ---------------------------------------------
    drop if missing(conglome) | missing(vivienda) | missing(hogar)
    duplicates drop conglome vivienda hogar, force
    save "datos crudos/enaho01-2016-100_clean.dta", replace
}

capture confirm file "datos crudos/enaho01-2016-700.dta"
if _rc == 0 {
    use "datos crudos/enaho01-2016-700.dta", clear

    * --- Armonizacion de nombres (Typos INEI) ---
    capture rename p713b16 p713b
    capture rename p713d16 p713d
    capture rename p713e16 p713e
    capture rename factor_07 factor07
    * --------------------------------------------

    * --- Estandarizacion extrema de llaves (Anti-Ceros y Espacios) ---
    foreach var in conglome vivienda hogar codperso codinfor { 
        capture confirm variable `var'
        if _rc == 0 {
            capture tostring `var', replace force
            capture replace `var' = trim(`var')
            capture destring `var', replace force
        }
    }
    * -----------------------------------------------------------------

    * --- Ahorro de Memoria: Borrado Quirúrgico ---
    capture drop año
    capture drop a?o
    capture drop mes
    capture drop nconglome
    capture drop ubigeo
    capture drop dominio
    capture drop estrato
    capture drop periodo
    capture drop codinfor
    capture drop factor*
    capture drop factora*
    * ---------------------------------------------
    drop if missing(conglome) | missing(vivienda) | missing(hogar)
    duplicates drop conglome vivienda hogar, force
    save "datos crudos/enaho01-2016-700_clean.dta", replace
}

capture confirm file "datos crudos/sumaria-2016.dta"
if _rc == 0 {
    use "datos crudos/sumaria-2016.dta", clear

    * --- Armonizacion de nombres (Typos INEI) ---
    capture rename p713b16 p713b
    capture rename p713d16 p713d
    capture rename p713e16 p713e
    capture rename factor_07 factor07
    * --------------------------------------------

    * --- Estandarizacion extrema de llaves (Anti-Ceros y Espacios) ---
    foreach var in conglome vivienda hogar codperso codinfor { 
        capture confirm variable `var'
        if _rc == 0 {
            capture tostring `var', replace force
            capture replace `var' = trim(`var')
            capture destring `var', replace force
        }
    }
    * -----------------------------------------------------------------

    * --- Ahorro de Memoria: Borrado Quirúrgico ---
    capture drop año
    capture drop a?o
    capture drop mes
    capture drop nconglome
    capture drop ubigeo
    capture drop dominio
    capture drop estrato
    capture drop periodo
    capture drop codinfor
    capture drop factor*
    capture drop factora*
    * ---------------------------------------------
    drop if missing(conglome) | missing(vivienda) | missing(hogar)
    duplicates drop conglome vivienda hogar, force
    save "datos crudos/sumaria-2016_clean.dta", replace
}

capture confirm file "datos crudos/enaho01a-2016-300.dta"
if _rc == 0 {
    use "datos crudos/enaho01a-2016-300.dta", clear

    * --- Armonizacion de nombres (Typos INEI) ---
    capture rename p713b16 p713b
    capture rename p713d16 p713d
    capture rename p713e16 p713e
    capture rename factor_07 factor07
    * --------------------------------------------

    * --- Estandarizacion extrema de llaves (Anti-Ceros y Espacios) ---
    foreach var in conglome vivienda hogar codperso codinfor { 
        capture confirm variable `var'
        if _rc == 0 {
            capture tostring `var', replace force
            capture replace `var' = trim(`var')
            capture destring `var', replace force
        }
    }
    * -----------------------------------------------------------------

    * --- Ahorro de Memoria: Borrado Quirúrgico ---
    capture drop año
    capture drop a?o
    capture drop mes
    capture drop nconglome
    capture drop ubigeo
    capture drop dominio
    capture drop estrato
    capture drop periodo
    capture drop codinfor
    capture drop factor*
    capture drop factora*
    * ---------------------------------------------
    drop if missing(conglome) | missing(vivienda) | missing(hogar) | missing(codperso)
    duplicates drop conglome vivienda hogar codperso, force
    save "datos crudos/enaho01a-2016-300_clean.dta", replace
}

capture confirm file "datos crudos/enaho01a-2016-400.dta"
if _rc == 0 {
    use "datos crudos/enaho01a-2016-400.dta", clear

    * --- Armonizacion de nombres (Typos INEI) ---
    capture rename p713b16 p713b
    capture rename p713d16 p713d
    capture rename p713e16 p713e
    capture rename factor_07 factor07
    * --------------------------------------------

    * --- Estandarizacion extrema de llaves (Anti-Ceros y Espacios) ---
    foreach var in conglome vivienda hogar codperso codinfor { 
        capture confirm variable `var'
        if _rc == 0 {
            capture tostring `var', replace force
            capture replace `var' = trim(`var')
            capture destring `var', replace force
        }
    }
    * -----------------------------------------------------------------

    * --- Ahorro de Memoria: Borrado Quirúrgico ---
    capture drop año
    capture drop a?o
    capture drop mes
    capture drop nconglome
    capture drop ubigeo
    capture drop dominio
    capture drop estrato
    capture drop periodo
    capture drop codinfor
    capture drop factor*
    capture drop factora*
    * ---------------------------------------------
    drop if missing(conglome) | missing(vivienda) | missing(hogar) | missing(codperso)
    duplicates drop conglome vivienda hogar codperso, force
    save "datos crudos/enaho01a-2016-400_clean.dta", replace
}

capture confirm file "datos crudos/enaho01a-2016-500.dta"
if _rc == 0 {
    use "datos crudos/enaho01a-2016-500.dta", clear

    * --- Armonizacion de nombres (Typos INEI) ---
    capture rename p713b16 p713b
    capture rename p713d16 p713d
    capture rename p713e16 p713e
    capture rename factor_07 factor07
    * --------------------------------------------

    * --- Estandarizacion extrema de llaves (Anti-Ceros y Espacios) ---
    foreach var in conglome vivienda hogar codperso codinfor { 
        capture confirm variable `var'
        if _rc == 0 {
            capture tostring `var', replace force
            capture replace `var' = trim(`var')
            capture destring `var', replace force
        }
    }
    * -----------------------------------------------------------------

    * --- Ahorro de Memoria: Borrado Quirúrgico ---
    capture drop año
    capture drop a?o
    capture drop mes
    capture drop nconglome
    capture drop ubigeo
    capture drop dominio
    capture drop estrato
    capture drop periodo
    capture drop codinfor
    capture drop factor*
    capture drop factora*
    * ---------------------------------------------
    drop if missing(conglome) | missing(vivienda) | missing(hogar) | missing(codperso)
    duplicates drop conglome vivienda hogar codperso, force
    save "datos crudos/enaho01a-2016-500_clean.dta", replace
}

capture confirm file "datos crudos/enaho01b-2016-1.dta"
if _rc == 0 {
    use "datos crudos/enaho01b-2016-1.dta", clear

    * --- Armonizacion de nombres (Typos INEI) ---
    capture rename p713b16 p713b
    capture rename p713d16 p713d
    capture rename p713e16 p713e
    capture rename factor_07 factor07
    * --------------------------------------------

    * --- Estandarizacion extrema de llaves (Anti-Ceros y Espacios) ---
    foreach var in conglome vivienda hogar codperso codinfor { 
        capture confirm variable `var'
        if _rc == 0 {
            capture tostring `var', replace force
            capture replace `var' = trim(`var')
            capture destring `var', replace force
        }
    }
    * -----------------------------------------------------------------

    * --- Ahorro de Memoria: Borrado Quirúrgico ---
    capture drop año
    capture drop a?o
    capture drop mes
    capture drop nconglome
    capture drop ubigeo
    capture drop dominio
    capture drop estrato
    capture drop periodo
    capture drop codinfor
    capture drop factor*
    capture drop factora*
    * ---------------------------------------------
    drop if missing(conglome) | missing(vivienda) | missing(hogar) | missing(codperso)
    duplicates drop conglome vivienda hogar codperso, force
    save "datos crudos/enaho01b-2016-1_clean.dta", replace
}

capture confirm file "datos crudos/enaho01b-2016-2.dta"
if _rc == 0 {
    use "datos crudos/enaho01b-2016-2.dta", clear

    * --- Armonizacion de nombres (Typos INEI) ---
    capture rename p713b16 p713b
    capture rename p713d16 p713d
    capture rename p713e16 p713e
    capture rename factor_07 factor07
    * --------------------------------------------

    * --- Estandarizacion extrema de llaves (Anti-Ceros y Espacios) ---
    foreach var in conglome vivienda hogar codperso codinfor { 
        capture confirm variable `var'
        if _rc == 0 {
            capture tostring `var', replace force
            capture replace `var' = trim(`var')
            capture destring `var', replace force
        }
    }
    * -----------------------------------------------------------------

    * --- Ahorro de Memoria: Borrado Quirúrgico ---
    capture drop año
    capture drop a?o
    capture drop mes
    capture drop nconglome
    capture drop ubigeo
    capture drop dominio
    capture drop estrato
    capture drop periodo
    capture drop codinfor
    capture drop factor*
    capture drop factora*
    * ---------------------------------------------
    drop if missing(conglome) | missing(vivienda) | missing(hogar) | missing(codperso)
    duplicates drop conglome vivienda hogar codperso, force
    save "datos crudos/enaho01b-2016-2_clean.dta", replace
}

capture confirm file "datos crudos/enaho01b-2016-3.dta"
if _rc == 0 {
    use "datos crudos/enaho01b-2016-3.dta", clear

    * --- Armonizacion de nombres (Typos INEI) ---
    capture rename p713b16 p713b
    capture rename p713d16 p713d
    capture rename p713e16 p713e
    capture rename factor_07 factor07
    * --------------------------------------------

    * --- Estandarizacion extrema de llaves (Anti-Ceros y Espacios) ---
    foreach var in conglome vivienda hogar codperso codinfor { 
        capture confirm variable `var'
        if _rc == 0 {
            capture tostring `var', replace force
            capture replace `var' = trim(`var')
            capture destring `var', replace force
        }
    }
    * -----------------------------------------------------------------

    * --- Ahorro de Memoria: Borrado Quirúrgico ---
    capture drop año
    capture drop a?o
    capture drop mes
    capture drop nconglome
    capture drop ubigeo
    capture drop dominio
    capture drop estrato
    capture drop periodo
    capture drop codinfor
    capture drop factor*
    capture drop factora*
    * ---------------------------------------------
    drop if missing(conglome) | missing(vivienda) | missing(hogar) | missing(codperso)
    duplicates drop conglome vivienda hogar codperso, force
    save "datos crudos/enaho01b-2016-3_clean.dta", replace
}

capture confirm file "datos crudos/enaho01-2016-700a.dta"
if _rc == 0 {
    use "datos crudos/enaho01-2016-700a.dta", clear

    * --- Armonizacion de nombres (Typos INEI) ---
    capture rename p713b16 p713b
    capture rename p713d16 p713d
    capture rename p713e16 p713e
    capture rename factor_07 factor07
    * --------------------------------------------
    capture rename p702 codperso
    capture tostring codperso, replace force
    capture tostring codinfor, replace force
    capture replace codperso = trim(codperso)
    capture replace codinfor = trim(codinfor)
    capture replace codperso = codinfor if codperso == "" | codperso == "."

    * --- Estandarizacion extrema de llaves (Anti-Ceros y Espacios) ---
    foreach var in conglome vivienda hogar codperso codinfor { 
        capture confirm variable `var'
        if _rc == 0 {
            capture tostring `var', replace force
            capture replace `var' = trim(`var')
            capture destring `var', replace force
        }
    }
    * -----------------------------------------------------------------
    gen programa_social1 = 0
    replace programa_social1 = 1 if inlist(p703,1,2,3,4,5,6,7,8,10)
    drop if missing(conglome) | missing(vivienda) | missing(hogar) | missing(codperso)
    duplicates drop conglome vivienda hogar codperso p703, force
    bysort conglome vivienda hogar codperso: gen num_item = _n
    tostring num_item, generate(j_str)
    replace j_str = "_" + j_str
    drop num_item

    * --- Ahorro de Memoria: Borrado Quirúrgico ---
    capture drop año
    capture drop a?o
    capture drop mes
    capture drop nconglome
    capture drop ubigeo
    capture drop dominio
    capture drop estrato
    capture drop periodo
    capture drop codinfor
    capture drop factor*
    capture drop factora*
    * ---------------------------------------------
    ds conglome vivienda hogar codperso j_str, not
    local vars `r(varlist)'
    foreach v of local vars {
        rename `v' v_`v'
    }
    ds conglome vivienda hogar codperso j_str, not
    local vars_wide `r(varlist)'
    reshape wide `vars_wide', i(conglome vivienda hogar codperso) j(j_str) string
    duplicates drop conglome vivienda hogar codperso, force
    save "datos crudos/enaho01-2016-700a_wide.dta", replace
}

capture confirm file "datos crudos/enaho01-2016-700b.dta"
if _rc == 0 {
    use "datos crudos/enaho01-2016-700b.dta", clear

    * --- Armonizacion de nombres (Typos INEI) ---
    capture rename p713b16 p713b
    capture rename p713d16 p713d
    capture rename p713e16 p713e
    capture rename factor_07 factor07
    * --------------------------------------------
    capture rename p711n codperso
    capture tostring codperso, replace force
    capture tostring codinfor, replace force
    capture replace codperso = trim(codperso)
    capture replace codinfor = trim(codinfor)
    capture replace codperso = codinfor if codperso == "" | codperso == "."

    * --- Estandarizacion extrema de llaves (Anti-Ceros y Espacios) ---
    foreach var in conglome vivienda hogar codperso codinfor { 
        capture confirm variable `var'
        if _rc == 0 {
            capture tostring `var', replace force
            capture replace `var' = trim(`var')
            capture destring `var', replace force
        }
    }
    * -----------------------------------------------------------------
    gen programa_social2 = 0
    replace programa_social2 = 1 if inlist(p712,1,2,3,4,5,6,7,8,9,10,11,12,13,15,16,17,18,19,29,30)
    capture gen periodo_prog16 = p713d - p713b
    drop if missing(conglome) | missing(vivienda) | missing(hogar) | missing(codperso)
    duplicates drop conglome vivienda hogar codperso p712, force
    bysort conglome vivienda hogar codperso: gen num_item = _n
    tostring num_item, generate(j_str)
    replace j_str = "_" + j_str
    drop num_item

    * --- Ahorro de Memoria: Borrado Quirúrgico ---
    capture drop año
    capture drop a?o
    capture drop mes
    capture drop nconglome
    capture drop ubigeo
    capture drop dominio
    capture drop estrato
    capture drop periodo
    capture drop codinfor
    capture drop factor*
    capture drop factora*
    * ---------------------------------------------
    ds conglome vivienda hogar codperso j_str, not
    local vars `r(varlist)'
    foreach v of local vars {
        rename `v' v_`v'
    }
    ds conglome vivienda hogar codperso j_str, not
    local vars_wide `r(varlist)'
    reshape wide `vars_wide', i(conglome vivienda hogar codperso) j(j_str) string
    duplicates drop conglome vivienda hogar codperso, force
    save "datos crudos/enaho01-2016-700b_wide.dta", replace
}

capture confirm file "datos crudos/enaho02-2016-2000a.dta"
if _rc == 0 {
    use "datos crudos/enaho02-2016-2000a.dta", clear

    * --- Armonizacion de nombres (Typos INEI) ---
    capture rename p713b16 p713b
    capture rename p713d16 p713d
    capture rename p713e16 p713e
    capture rename factor_07 factor07
    * --------------------------------------------

    * --- Estandarizacion extrema de llaves (Anti-Ceros y Espacios) ---
    foreach var in conglome vivienda hogar codperso codinfor { 
        capture confirm variable `var'
        if _rc == 0 {
            capture tostring `var', replace force
            capture replace `var' = trim(`var')
            capture destring `var', replace force
        }
    }
    * -----------------------------------------------------------------
    drop if missing(conglome) | missing(vivienda) | missing(hogar) | missing(codperso)
    duplicates drop
    bysort conglome vivienda hogar codperso: gen num_parcela = _n
    tostring num_parcela, generate(j_str)
    replace j_str = "_" + j_str
    drop num_parcela

    * --- Ahorro de Memoria: Borrado Quirúrgico ---
    capture drop año
    capture drop a?o
    capture drop mes
    capture drop nconglome
    capture drop ubigeo
    capture drop dominio
    capture drop estrato
    capture drop periodo
    capture drop codinfor
    capture drop factor*
    capture drop factora*
    * ---------------------------------------------
    ds conglome vivienda hogar codperso j_str, not
    local vars `r(varlist)'
    foreach v of local vars {
        rename `v' v_`v'
    }
    ds conglome vivienda hogar codperso j_str, not
    local vars_wide `r(varlist)'
    reshape wide `vars_wide', i(conglome vivienda hogar codperso) j(j_str) string
    duplicates drop conglome vivienda hogar codperso, force
    save "datos crudos/enaho02-2016-2000a_wide.dta", replace
}

capture confirm file "datos crudos/enaho02-2016-2100.dta"
if _rc == 0 {
    use "datos crudos/enaho02-2016-2100.dta", clear

    * --- Armonizacion de nombres (Typos INEI) ---
    capture rename p713b16 p713b
    capture rename p713d16 p713d
    capture rename p713e16 p713e
    capture rename factor_07 factor07
    * --------------------------------------------

    * --- Estandarizacion extrema de llaves (Anti-Ceros y Espacios) ---
    foreach var in conglome vivienda hogar codperso codinfor { 
        capture confirm variable `var'
        if _rc == 0 {
            capture tostring `var', replace force
            capture replace `var' = trim(`var')
            capture destring `var', replace force
        }
    }
    * -----------------------------------------------------------------
    drop if missing(conglome) | missing(vivienda) | missing(hogar) | missing(codperso)
    duplicates drop
    bysort conglome vivienda hogar codperso: gen num_cultivo = _n
    tostring num_cultivo, generate(j_str)
    replace j_str = "_" + j_str
    drop num_cultivo

    * --- Ahorro de Memoria: Borrado Quirúrgico ---
    capture drop año
    capture drop a?o
    capture drop mes
    capture drop nconglome
    capture drop ubigeo
    capture drop dominio
    capture drop estrato
    capture drop periodo
    capture drop codinfor
    capture drop factor*
    capture drop factora*
    * ---------------------------------------------
    ds conglome vivienda hogar codperso j_str, not
    local vars `r(varlist)'
    foreach v of local vars {
        rename `v' v_`v'
    }
    ds conglome vivienda hogar codperso j_str, not
    local vars_wide `r(varlist)'
    reshape wide `vars_wide', i(conglome vivienda hogar codperso) j(j_str) string
    duplicates drop conglome vivienda hogar codperso, force
    save "datos crudos/enaho02-2016-2100_wide.dta", replace
}

capture confirm file "datos crudos/enaho02-2016-2200.dta"
if _rc == 0 {
    use "datos crudos/enaho02-2016-2200.dta", clear

    * --- Armonizacion de nombres (Typos INEI) ---
    capture rename p713b16 p713b
    capture rename p713d16 p713d
    capture rename p713e16 p713e
    capture rename factor_07 factor07
    * --------------------------------------------

    * --- Estandarizacion extrema de llaves (Anti-Ceros y Espacios) ---
    foreach var in conglome vivienda hogar codperso codinfor { 
        capture confirm variable `var'
        if _rc == 0 {
            capture tostring `var', replace force
            capture replace `var' = trim(`var')
            capture destring `var', replace force
        }
    }
    * -----------------------------------------------------------------
    drop if missing(conglome) | missing(vivienda) | missing(hogar) | missing(codperso)
    duplicates drop
    bysort conglome vivienda hogar codperso: gen num_subprod_agri = _n
    tostring num_subprod_agri, generate(j_str)
    replace j_str = "_" + j_str
    drop num_subprod_agri

    * --- Ahorro de Memoria: Borrado Quirúrgico ---
    capture drop año
    capture drop a?o
    capture drop mes
    capture drop nconglome
    capture drop ubigeo
    capture drop dominio
    capture drop estrato
    capture drop periodo
    capture drop codinfor
    capture drop factor*
    capture drop factora*
    * ---------------------------------------------
    ds conglome vivienda hogar codperso j_str, not
    local vars `r(varlist)'
    foreach v of local vars {
        rename `v' v_`v'
    }
    ds conglome vivienda hogar codperso j_str, not
    local vars_wide `r(varlist)'
    reshape wide `vars_wide', i(conglome vivienda hogar codperso) j(j_str) string
    duplicates drop conglome vivienda hogar codperso, force
    save "datos crudos/enaho02-2016-2200_wide.dta", replace
}

capture confirm file "datos crudos/enaho02-2016-2300.dta"
if _rc == 0 {
    use "datos crudos/enaho02-2016-2300.dta", clear

    * --- Armonizacion de nombres (Typos INEI) ---
    capture rename p713b16 p713b
    capture rename p713d16 p713d
    capture rename p713e16 p713e
    capture rename factor_07 factor07
    * --------------------------------------------

    * --- Estandarizacion extrema de llaves (Anti-Ceros y Espacios) ---
    foreach var in conglome vivienda hogar codperso codinfor { 
        capture confirm variable `var'
        if _rc == 0 {
            capture tostring `var', replace force
            capture replace `var' = trim(`var')
            capture destring `var', replace force
        }
    }
    * -----------------------------------------------------------------
    drop if missing(conglome) | missing(vivienda) | missing(hogar) | missing(codperso)
    duplicates drop
    bysort conglome vivienda hogar codperso: gen num_forestal = _n
    tostring num_forestal, generate(j_str)
    replace j_str = "_" + j_str
    drop num_forestal

    * --- Ahorro de Memoria: Borrado Quirúrgico ---
    capture drop año
    capture drop a?o
    capture drop mes
    capture drop nconglome
    capture drop ubigeo
    capture drop dominio
    capture drop estrato
    capture drop periodo
    capture drop codinfor
    capture drop factor*
    capture drop factora*
    * ---------------------------------------------
    ds conglome vivienda hogar codperso j_str, not
    local vars `r(varlist)'
    foreach v of local vars {
        rename `v' v_`v'
    }
    ds conglome vivienda hogar codperso j_str, not
    local vars_wide `r(varlist)'
    reshape wide `vars_wide', i(conglome vivienda hogar codperso) j(j_str) string
    duplicates drop conglome vivienda hogar codperso, force
    save "datos crudos/enaho02-2016-2300_wide.dta", replace
}

capture confirm file "datos crudos/enaho02-2016-2500.dta"
if _rc == 0 {
    use "datos crudos/enaho02-2016-2500.dta", clear

    * --- Armonizacion de nombres (Typos INEI) ---
    capture rename p713b16 p713b
    capture rename p713d16 p713d
    capture rename p713e16 p713e
    capture rename factor_07 factor07
    * --------------------------------------------

    * --- Estandarizacion extrema de llaves (Anti-Ceros y Espacios) ---
    foreach var in conglome vivienda hogar codperso codinfor { 
        capture confirm variable `var'
        if _rc == 0 {
            capture tostring `var', replace force
            capture replace `var' = trim(`var')
            capture destring `var', replace force
        }
    }
    * -----------------------------------------------------------------
    drop if missing(conglome) | missing(vivienda) | missing(hogar) | missing(codperso)
    duplicates drop
    bysort conglome vivienda hogar codperso: gen num_pecuario = _n
    tostring num_pecuario, generate(j_str)
    replace j_str = "_" + j_str
    drop num_pecuario

    * --- Ahorro de Memoria: Borrado Quirúrgico ---
    capture drop año
    capture drop a?o
    capture drop mes
    capture drop nconglome
    capture drop ubigeo
    capture drop dominio
    capture drop estrato
    capture drop periodo
    capture drop codinfor
    capture drop factor*
    capture drop factora*
    * ---------------------------------------------
    ds conglome vivienda hogar codperso j_str, not
    local vars `r(varlist)'
    foreach v of local vars {
        rename `v' v_`v'
    }
    ds conglome vivienda hogar codperso j_str, not
    local vars_wide `r(varlist)'
    reshape wide `vars_wide', i(conglome vivienda hogar codperso) j(j_str) string
    duplicates drop conglome vivienda hogar codperso, force
    save "datos crudos/enaho02-2016-2500_wide.dta", replace
}

capture confirm file "datos crudos/enaho02-2016-2600.dta"
if _rc == 0 {
    use "datos crudos/enaho02-2016-2600.dta", clear

    * --- Armonizacion de nombres (Typos INEI) ---
    capture rename p713b16 p713b
    capture rename p713d16 p713d
    capture rename p713e16 p713e
    capture rename factor_07 factor07
    * --------------------------------------------

    * --- Estandarizacion extrema de llaves (Anti-Ceros y Espacios) ---
    foreach var in conglome vivienda hogar codperso codinfor { 
        capture confirm variable `var'
        if _rc == 0 {
            capture tostring `var', replace force
            capture replace `var' = trim(`var')
            capture destring `var', replace force
        }
    }
    * -----------------------------------------------------------------
    drop if missing(conglome) | missing(vivienda) | missing(hogar) | missing(codperso)
    duplicates drop
    bysort conglome vivienda hogar codperso: gen num_subprod_pec = _n
    tostring num_subprod_pec, generate(j_str)
    replace j_str = "_" + j_str
    drop num_subprod_pec

    * --- Ahorro de Memoria: Borrado Quirúrgico ---
    capture drop año
    capture drop a?o
    capture drop mes
    capture drop nconglome
    capture drop ubigeo
    capture drop dominio
    capture drop estrato
    capture drop periodo
    capture drop codinfor
    capture drop factor*
    capture drop factora*
    * ---------------------------------------------
    ds conglome vivienda hogar codperso j_str, not
    local vars `r(varlist)'
    foreach v of local vars {
        rename `v' v_`v'
    }
    ds conglome vivienda hogar codperso j_str, not
    local vars_wide `r(varlist)'
    reshape wide `vars_wide', i(conglome vivienda hogar codperso) j(j_str) string
    duplicates drop conglome vivienda hogar codperso, force
    save "datos crudos/enaho02-2016-2600_wide.dta", replace
}

capture confirm file "datos crudos/enaho02-2016-2000.dta"
if _rc == 0 {
    use "datos crudos/enaho02-2016-2000.dta", clear

    * --- Armonizacion de nombres (Typos INEI) ---
    capture rename p713b16 p713b
    capture rename p713d16 p713d
    capture rename p713e16 p713e
    capture rename factor_07 factor07
    * --------------------------------------------

    * --- Estandarizacion extrema de llaves (Anti-Ceros y Espacios) ---
    foreach var in conglome vivienda hogar codperso codinfor { 
        capture confirm variable `var'
        if _rc == 0 {
            capture tostring `var', replace force
            capture replace `var' = trim(`var')
            capture destring `var', replace force
        }
    }
    * -----------------------------------------------------------------

    * --- Ahorro de Memoria: Borrado Quirúrgico ---
    capture drop año
    capture drop a?o
    capture drop mes
    capture drop nconglome
    capture drop ubigeo
    capture drop dominio
    capture drop estrato
    capture drop periodo
    capture drop codinfor
    capture drop factor*
    capture drop factora*
    * ---------------------------------------------
    drop if missing(conglome) | missing(vivienda) | missing(hogar) | missing(codperso)
    duplicates drop conglome vivienda hogar codperso, force
    save "datos crudos/enaho02-2016-2000_clean.dta", replace
}

capture confirm file "datos crudos/enaho02-2016-2400.dta"
if _rc == 0 {
    use "datos crudos/enaho02-2016-2400.dta", clear

    * --- Armonizacion de nombres (Typos INEI) ---
    capture rename p713b16 p713b
    capture rename p713d16 p713d
    capture rename p713e16 p713e
    capture rename factor_07 factor07
    * --------------------------------------------

    * --- Estandarizacion extrema de llaves (Anti-Ceros y Espacios) ---
    foreach var in conglome vivienda hogar codperso codinfor { 
        capture confirm variable `var'
        if _rc == 0 {
            capture tostring `var', replace force
            capture replace `var' = trim(`var')
            capture destring `var', replace force
        }
    }
    * -----------------------------------------------------------------

    * --- Ahorro de Memoria: Borrado Quirúrgico ---
    capture drop año
    capture drop a?o
    capture drop mes
    capture drop nconglome
    capture drop ubigeo
    capture drop dominio
    capture drop estrato
    capture drop periodo
    capture drop codinfor
    capture drop factor*
    capture drop factora*
    * ---------------------------------------------
    drop if missing(conglome) | missing(vivienda) | missing(hogar) | missing(codperso)
    duplicates drop conglome vivienda hogar codperso, force
    save "datos crudos/enaho02-2016-2400_clean.dta", replace
}

capture confirm file "datos crudos/enaho02-2016-2700.dta"
if _rc == 0 {
    use "datos crudos/enaho02-2016-2700.dta", clear

    * --- Armonizacion de nombres (Typos INEI) ---
    capture rename p713b16 p713b
    capture rename p713d16 p713d
    capture rename p713e16 p713e
    capture rename factor_07 factor07
    * --------------------------------------------

    * --- Estandarizacion extrema de llaves (Anti-Ceros y Espacios) ---
    foreach var in conglome vivienda hogar codperso codinfor { 
        capture confirm variable `var'
        if _rc == 0 {
            capture tostring `var', replace force
            capture replace `var' = trim(`var')
            capture destring `var', replace force
        }
    }
    * -----------------------------------------------------------------

    * --- Ahorro de Memoria: Borrado Quirúrgico ---
    capture drop año
    capture drop a?o
    capture drop mes
    capture drop nconglome
    capture drop ubigeo
    capture drop dominio
    capture drop estrato
    capture drop periodo
    capture drop codinfor
    capture drop factor*
    capture drop factora*
    * ---------------------------------------------
    drop if missing(conglome) | missing(vivienda) | missing(hogar) | missing(codperso)
    duplicates drop conglome vivienda hogar codperso, force
    save "datos crudos/enaho02-2016-2700_clean.dta", replace
}

use "datos crudos/enaho01-2016-200.dta", clear

    * --- Estandarizacion extrema de llaves (Anti-Ceros y Espacios) ---
    foreach var in conglome vivienda hogar codperso codinfor { 
        capture confirm variable `var'
        if _rc == 0 {
            capture tostring `var', replace force
            capture replace `var' = trim(`var')
            capture destring `var', replace force
        }
    }
    * -----------------------------------------------------------------
drop if missing(conglome) | missing(vivienda) | missing(hogar) | missing(codperso)
duplicates drop conglome vivienda hogar codperso, force

capture confirm file "datos crudos/enaho01a-2016-300_clean.dta"
if _rc == 0 {
    merge 1:1 conglome vivienda hogar codperso using "datos crudos/enaho01a-2016-300_clean.dta", force
    drop if _merge == 2
    drop _merge
}
capture confirm file "datos crudos/enaho01a-2016-400_clean.dta"
if _rc == 0 {
    merge 1:1 conglome vivienda hogar codperso using "datos crudos/enaho01a-2016-400_clean.dta", force
    drop if _merge == 2
    drop _merge
}
capture confirm file "datos crudos/enaho01a-2016-500_clean.dta"
if _rc == 0 {
    merge 1:1 conglome vivienda hogar codperso using "datos crudos/enaho01a-2016-500_clean.dta", force
    drop if _merge == 2
    drop _merge
}
capture confirm file "datos crudos/enaho01b-2016-1_clean.dta"
if _rc == 0 {
    merge 1:1 conglome vivienda hogar codperso using "datos crudos/enaho01b-2016-1_clean.dta", force
    drop if _merge == 2
    drop _merge
}
capture confirm file "datos crudos/enaho01b-2016-2_clean.dta"
if _rc == 0 {
    merge 1:1 conglome vivienda hogar codperso using "datos crudos/enaho01b-2016-2_clean.dta", force
    drop if _merge == 2
    drop _merge
}
capture confirm file "datos crudos/enaho01b-2016-3_clean.dta"
if _rc == 0 {
    merge 1:1 conglome vivienda hogar codperso using "datos crudos/enaho01b-2016-3_clean.dta", force
    drop if _merge == 2
    drop _merge
}
capture confirm file "datos crudos/enaho01-2016-700a_wide.dta"
if _rc == 0 {
    merge 1:1 conglome vivienda hogar codperso using "datos crudos/enaho01-2016-700a_wide.dta", force
    drop if _merge == 2
    drop _merge
}
capture confirm file "datos crudos/enaho01-2016-700b_wide.dta"
if _rc == 0 {
    merge 1:1 conglome vivienda hogar codperso using "datos crudos/enaho01-2016-700b_wide.dta", force
    drop if _merge == 2
    drop _merge
}
capture confirm file "datos crudos/enaho02-2016-2000_clean.dta"
if _rc == 0 {
    merge 1:1 conglome vivienda hogar codperso using "datos crudos/enaho02-2016-2000_clean.dta", force
    drop if _merge == 2
    drop _merge
}
capture confirm file "datos crudos/enaho02-2016-2000a_wide.dta"
if _rc == 0 {
    merge 1:1 conglome vivienda hogar codperso using "datos crudos/enaho02-2016-2000a_wide.dta", force
    drop if _merge == 2
    drop _merge
}
capture confirm file "datos crudos/enaho02-2016-2100_wide.dta"
if _rc == 0 {
    merge 1:1 conglome vivienda hogar codperso using "datos crudos/enaho02-2016-2100_wide.dta", force
    drop if _merge == 2
    drop _merge
}
capture confirm file "datos crudos/enaho02-2016-2200_wide.dta"
if _rc == 0 {
    merge 1:1 conglome vivienda hogar codperso using "datos crudos/enaho02-2016-2200_wide.dta", force
    drop if _merge == 2
    drop _merge
}
capture confirm file "datos crudos/enaho02-2016-2300_wide.dta"
if _rc == 0 {
    merge 1:1 conglome vivienda hogar codperso using "datos crudos/enaho02-2016-2300_wide.dta", force
    drop if _merge == 2
    drop _merge
}
capture confirm file "datos crudos/enaho02-2016-2400_clean.dta"
if _rc == 0 {
    merge 1:1 conglome vivienda hogar codperso using "datos crudos/enaho02-2016-2400_clean.dta", force
    drop if _merge == 2
    drop _merge
}
capture confirm file "datos crudos/enaho02-2016-2500_wide.dta"
if _rc == 0 {
    merge 1:1 conglome vivienda hogar codperso using "datos crudos/enaho02-2016-2500_wide.dta", force
    drop if _merge == 2
    drop _merge
}
capture confirm file "datos crudos/enaho02-2016-2600_wide.dta"
if _rc == 0 {
    merge 1:1 conglome vivienda hogar codperso using "datos crudos/enaho02-2016-2600_wide.dta", force
    drop if _merge == 2
    drop _merge
}
capture confirm file "datos crudos/enaho02-2016-2700_clean.dta"
if _rc == 0 {
    merge 1:1 conglome vivienda hogar codperso using "datos crudos/enaho02-2016-2700_clean.dta", force
    drop if _merge == 2
    drop _merge
}
save "datos crudos/temp_personas_2016.dta", replace

use "datos crudos/temp_personas_2016.dta", clear
capture confirm file "datos crudos/enaho01-2016-100_clean.dta"
if _rc == 0 {
    merge m:1 conglome vivienda hogar using "datos crudos/enaho01-2016-100_clean.dta", force
    drop if _merge == 2
    drop _merge
}
capture confirm file "datos crudos/enaho01-2016-700_clean.dta"
if _rc == 0 {
    merge m:1 conglome vivienda hogar using "datos crudos/enaho01-2016-700_clean.dta", force
    drop if _merge == 2
    drop _merge
}
capture confirm file "datos crudos/sumaria-2016_clean.dta"
if _rc == 0 {
    merge m:1 conglome vivienda hogar using "datos crudos/sumaria-2016_clean.dta", force
    drop if _merge == 2
    drop _merge
}
save "datos crudos/2016.dta", replace

use "datos crudos/2016.dta", clear
rename conglome con_16
rename vivienda viv_16
rename hogar hog_16
save "datos crudos/2016n.dta", replace

use "datos crudos/enaho01_2012_2016_100_panel.dta", clear
    * --- Armonizar llaves maestras del Panel Antiguo ---
    capture rename cenl numpanh
    capture rename num_hog numpanh
    * -----------------------------------------------------------
    * --- Armonizar nombres mutantes del Panel ---
    capture rename factor_07_16 factor07_16
    capture rename factor07_16_16 factor07_16
    capture rename factor07_16a factor07_16
    capture rename facpanel* fac_panel*
    * -----------------------------------------------------------
    * --- KEEP SEGURO (Evita error 111 si faltan variables) ---
    local keep_vars numpanh mes_16 conglome_16 vivienda_16 hogar_16 ubigeo_16 dominio_16 estrato_16 factor07_16
    foreach v in p101_16 p105a_16 tipenc_16 fecent_16 result_16 panel_16 periodo_16 {
        capture confirm variable `v'
        if _rc == 0 {
            local keep_vars `keep_vars' `v'
        }
    }
    foreach prefix in hpan hpanel fac_panel facpanel {
        capture ds `prefix'*
        if _rc == 0 {
            local keep_vars `keep_vars' `r(varlist)'
        }
    }
    local keep_vars: list uniq keep_vars
    keep `keep_vars'
    * -----------------------------------------------------------
rename conglome_16 con_16
rename vivienda_16 viv_16
rename hogar_16 hog_16
    * --- Estandarizacion extrema del Panel ---
    foreach var in con_16 viv_16 hog_16 numpanh {
        capture confirm variable `var'
        if _rc == 0 {
            capture tostring `var', replace force
            capture replace `var' = trim(`var')
            capture destring `var', replace force
        }
    }
capture destring mes_16, replace force
keep if inrange(mes_16, 1, 12)
drop if missing(con_16) | missing(viv_16) | missing(hog_16)
duplicates drop con_16 viv_16 hog_16, force
gen ID = 2016
merge 1:m con_16 viv_16 hog_16 using "datos crudos/2016n.dta", force
drop if _merge == 1
drop _merge
rename con_16 conglome
rename viv_16 vivienda
rename hog_16 hogar
save "resultados/2016_enahop.dta", replace

**************************************************
* CAPA 3: APPEND MASIVO (CREANDO BASE MASTER INDIVIDUO-AÑO)
**************************************************

use "resultados/2012_enahop.dta", clear
capture confirm file "resultados/2013_enahop.dta"
if _rc == 0 {
    append using "resultados/2013_enahop.dta", force
}
capture confirm file "resultados/2014_enahop.dta"
if _rc == 0 {
    append using "resultados/2014_enahop.dta", force
}
capture confirm file "resultados/2015_enahop.dta"
if _rc == 0 {
    append using "resultados/2015_enahop.dta", force
}
capture confirm file "resultados/2016_enahop.dta"
if _rc == 0 {
    append using "resultados/2016_enahop.dta", force
}
save "resultados/BASE_MAESTRA_PANEL_2012_2016.dta", replace

**************************************************
* CAPA 4: CREACION DEL PANEL FAMILIAR (AGREGACIONES)
**************************************************

use "resultados/BASE_MAESTRA_PANEL_2012_2016.dta", clear

* --- 1. Identificadores Básicos y Núcleo Familiar ---
capture tostring numpanh, generate(numpanh_str)
gen id_hogar = numpanh_str
gen es_jefe = (p203 == 1)

gen familia = .
replace familia = 3 if inlist(p203,8,9,10) // Otros parientes
replace familia = 4 if inlist(p203,1,2,3,4,5,6,7,11) // Núcleo duro
keep if familia == 4
tostring familia, generate(familia_str)
gen id_familia = id_hogar + familia_str
destring id_familia, replace

bysort id_familia ID: egen miembros_fam = count(id_familia)

* --- (A) Generar variables base individuales ANTES de ordenar y colapsar ---
capture drop missing_rep
egen missing_rep = rowmiss(_all)

capture confirm variable p208a
if _rc != 0 {
    gen p208a = 0
}
gen adulto = (p208a >= 17)
gen niño = (p208a <= 12)
gen mayor = (p208a >= 60)

gen educacion_alta = inlist(p301a, 5, 6, 7, 8, 9, 10, 11, 12)
gen casado = (p209 == 2)
gen enfermo = (p401 == 1)

gen bienestar_p33 = inlist(p33_2, 1, 2)
gen bienestar_p37 = inlist(p37, 3, 4)
gen bienestar_fam2 = (bienestar_p33 == 1 & bienestar_p37 == 1)
gen bienestar_familiar = inlist(p33_2, 1, 2)
gen insat_demo = inlist(p7, 1, 2, 5)

gen negocio_p507 = inlist(p507, 1, 2)
gen negocio_p517 = inlist(p517, 1, 2)
gen negocio_indiv = (negocio_p507 == 1 | negocio_p517 == 1)

gen autosum_p535 = (p535 == 1)
gen autosum_p542 = (p542 == 1)
gen autosum_indiv = (autosum_p535 == 1 | autosum_p542 == 1)

gen trabajadores_independientes = (negocio_indiv == 1 & autosum_indiv == 1)

foreach var in i524a1 d529t i530a d536 i538a1 d540t i541a d543 {
    capture confirm variable `var'
    if _rc == 0 {
        capture replace `var' = 0 if missing(`var')
    }
    if _rc != 0 {
        gen `var' = 0
    }
}
gen ingreso_persona = i524a1 + d529t + i530a + d536 + i538a1 + d540t + i541a + d543
replace ingreso_persona = 0 if missing(ingreso_persona)

gen casa_propia = inlist(p105a, 2)
gen titulo_prop = inlist(p106a, 1, 3)
gen casa_titulada = (casa_propia == 1 & titulo_prop == 1)
gen arraigo_religioso = inlist(p1_16, 3, 4, 5)

capture confirm variable pobreza
if _rc == 0 {
    capture destring pobreza, replace force
    gen pobre_indiv = inlist(pobreza, 1, 2)
}
else {
    gen pobre_indiv = 0
}

* --- (B) Crear variables FAMILIARES (egen bysort) ---
bysort id_familia ID: egen negocio_fam = max(negocio_indiv)
bysort id_familia ID: egen autosum_fam = max(autosum_indiv)
gen negocio_propio = (negocio_fam == 1 & autosum_fam == 1)
bysort id_familia ID: egen prop_negocio_propio = mean(trabajadores_independientes)

bysort id_familia ID: egen ingreso_laboral_fam = total(ingreso_persona)
gen peso_salario_ind = ingreso_persona / ingreso_laboral_fam
replace peso_salario_ind = 0 if missing(peso_salario_ind)
bysort id_familia ID: egen peso_salario_propiofam2 = total(cond(trabajadores_independientes == 1, peso_salario_ind, 0))

bysort id_familia ID: egen educ_sum = total(educacion_alta * adulto)
bysort id_familia ID: egen adultos = total(adulto)
gen educ_fam = (educ_sum / adultos) >= 0.5

bysort id_familia ID: egen casado_fam = max(casado)
bysort id_familia ID: egen total_pobres = total(pobre_indiv)
bysort id_familia ID: egen total_personas = count(pobre_indiv)
gen pobre_fam = (total_pobres / total_personas >= 0.5)

bysort id_familia ID: egen hay_niño = max(niño)
gen abuelo = (mayor == 1 & hay_niño == 1)
bysort id_familia ID: egen hay_abuelo = max(abuelo)
bysort id_familia ID: egen sin_salud = max(enfermo)
bysort id_familia ID: egen sin_salud_totalfam = total(enfermo)

* --- (C) Reasignar variables de Bienestar/Vivienda usando Representante Inteligente ---
gsort id_familia ID -es_jefe missing_rep -p208a codperso
foreach var in bienestar_fam2 bienestar_familiar insat_demo casa_propia titulo_prop casa_titulada arraigo_religioso {
    by id_familia ID: replace `var' = `var'[1]
}

* ===================================================================
* AQUI APLICAREMOS TUS DICCIONARIOS PARA AGREGAR VARIABLES AGRÍCOLAS
* ===================================================================

* [Espacio reservado para las variables que me indicarás]

* --- (D) Colapsar la base a 1 fila por familia ---
by id_familia ID: keep if _n == 1
drop missing_rep

save "resultados/PANEL_FAMILIAR_FINAL_2012_2016.dta", replace
export delimited using "resultados/PANEL_FAMILIAR_FINAL_2012_2016.csv", replace
