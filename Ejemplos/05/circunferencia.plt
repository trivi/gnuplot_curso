reset

#Habilitamos las gráficas de funciones paramétricas
set parametric

#Graficamos el círculo de radio 1
plot cos(t),sin(t)

#Podemos generalizar
r=2
plot r*cos(t),r*sin(t) lc "red"

#Se ven varias curvas superpuestas
#Ajustamos el rango de t
set trange[0:2*pi]

#Ampliamos la muestra para suavizar la curva
set samples 100000

#eliminamos la leyenda
unset key

#Añadimos un titulo
set title "Circunferencia"

rep

pause -1

set encoding utf8
set term postscript enhanced color
set output "circunferencia.eps"
replot
