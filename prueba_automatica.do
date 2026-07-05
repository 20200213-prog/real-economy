
sysuse auto, clear
regress price mpg weight
outsheet using "resultados_prueba.csv", comma replace
