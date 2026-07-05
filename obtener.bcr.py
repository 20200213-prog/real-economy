import cloudscraper
import pandas as pd
import json

def obtener_datos_bcrp():
    print("Python: Conectando al BCRP para descargar inflación con precisión...")
    
    fecha_inicio = "2020-1"
    fecha_fin = "2026-5" 
    
    scraper = cloudscraper.create_scraper(
        browser={'browser': 'chrome', 'platform': 'windows', 'desktop': True}
    )
    
    try:
        # --- DESCARGA 1: INFLACIÓN TOTAL ---
        # PN01271PM (Mensual) - PN01273PM (Interanual)
        url_total = f"https://estadisticas.bcrp.gob.pe/estadisticas/series/api/PN01271PM-PN01273PM/json/{fecha_inicio}/{fecha_fin}"
        resp_total = scraper.get(url_total)
        
        # --- DESCARGA 2: INFLACIÓN SUBYACENTE ---
        # PN01276PM (Mensual) - PN01277PM (Interanual)
        url_subyacente = f"https://estadisticas.bcrp.gob.pe/estadisticas/series/api/PN01276PM-PN01277PM/json/{fecha_inicio}/{fecha_fin}"
        resp_subyacente = scraper.get(url_subyacente)
        
        if resp_total.status_code == 200 and resp_subyacente.status_code == 200:
            datos_total = resp_total.json()
            datos_subyacente = resp_subyacente.json()
            
            meses = []
            tot_men, tot_int, sub_men, sub_int = [], [], [], []
            
            # Procesamos la Inflación Total (Sabemos exacto el orden porque pedimos solo 2)
            for periodo in datos_total['periods']:
                meses.append(periodo['name'])
                tot_men.append(float(periodo['values'][0]))
                tot_int.append(float(periodo['values'][1]))
                
            # Procesamos la Inflación Subyacente
            for periodo in datos_subyacente['periods']:
                sub_men.append(float(periodo['values'][0]))
                sub_int.append(float(periodo['values'][1]))
            
            # Armamos el DataFrame a prueba de balas
            df = pd.DataFrame({
                'Mes': meses,
                'Total_Mensual': tot_men,
                'Total_Interanual': tot_int,
                'Subyacente_Mensual': sub_men,
                'Subyacente_Interanual': sub_int
            })
            
            ruta_archivo = 'datos_web/inflacion.bcr.csv'
            df.to_csv(ruta_archivo, index=False)
            
            print(f"✅ ¡Éxito! Las 4 series fueron separadas y guardadas correctamente.")
            print(df.tail(2)) # Imprimimos las 2 últimas filas para verificar
            
        else:
            print("❌ Error: El servidor BCRP no respondió a una de las peticiones.")
            
    except Exception as e:
        print(f"❌ Error de red: {e}")

if __name__ == "__main__":
    obtener_datos_bcrp()