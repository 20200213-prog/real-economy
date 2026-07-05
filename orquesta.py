import subprocess
import sys

def ejecutar_comando(comando, descripcion):
    print(f"\n⏳ [ORQUESTA] Iniciando: {descripcion}...")
    try:
        # Ejecutamos el comando simulando la terminal
        subprocess.run(comando, shell=True, check=True)
        print(f"✅ [ORQUESTA] Completado: {descripcion}")
    except subprocess.CalledProcessError as e:
        print(f"\n❌ [ORQUESTA] Error crítico al ejecutar: {descripcion}")
        print("Se detendrá el proceso de actualización para evitar publicar datos erróneos.")
        sys.exit(1) # Detenemos la orquesta si un músico se equivoca

def iniciar_actualizacion():
    print("="*55)
    print("🚀 INICIANDO FÁBRICA DE REAL ECONOMY 🚀")
    print("="*55)
    
    # PASO 1: Extraer la sangre real (Datos del BCRP)
    ejecutar_comando("python obtener.bcr.py", "Paso 1/3: Descarga de datos del BCRP")
    
    # PASO 2: Armar el esqueleto (Documento Quarto)
    ejecutar_comando("python reparar_blog.py", "Paso 2/3: Preparación de la estructura del Blog")
    
    # PASO 3: Magia pura (Generar HTML)
    ejecutar_comando("quarto render primer_analisis.qmd", "Paso 3/3: Compilación web con Quarto")
    
    print("\n" + "="*55)
    print("🎉 ¡BLOG ACTUALIZADO CON ÉXITO! 🎉")
    print("="*55)

if __name__ == "__main__":
    iniciar_actualizacion()
