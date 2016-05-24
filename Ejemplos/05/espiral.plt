reset

#Habilitamos las gráficas de funciones paramétricas
set parametric

#Graficamos una espiral logaritmica
plot sin(t)/t,cos(t)/t

#Ajustamos los rangos
set trange[0.001:31.4159]
set yrange[-1.5:1.5]

#Ampliamos la muestra para suavizar la curva
set samples 100000

#eliminamos la leyenda
unset key

#Añadimos un titulo
set title "Espiral"

rep

pause -1

set encoding utf8
set term postscript enhanced color
set output "espiral.eps"
replot

