reset

#Habilitamos las gráficas de funciones paramétricas
set parametric

#Graficamos una espiral logaritmica
plot 1.2**t*cos(t),1.2**t*sin(t)

#Ampliamos la muestra para suavizar la curva
set samples 100000

#Aumentamos el rango para que la curva sea más larga
set trange[0:1000]

#eliminamos los valores en los ejes y la leyenda
unset tics
unset key

#Añadimos un titulo
set title "Espiral logarítmica"

rep

pause -1

set encoding utf8
set term postscript enhanced color
set output "espiral_log.eps"
replot

