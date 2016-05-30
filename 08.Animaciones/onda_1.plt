reset

#seleccionamos la terminal apropiada para la salida
set term gif animate delay 10
set output "onda_1.gif"

#Fijamos el rango del gráfico en X e Y
set xrange[-pi:pi]
set yrange[-pi:pi]

#Seleccionamos las opciones de color y lineas de la gráfica
set pm3d
set hidden3d

#Eliminamos la leyenda
unset key
#Eliminamos la leyenda de colores y los ejes
unset colorbox
unset tics
unset border


#Ajustamos la posición del eje Z
set xyplane  -1
set zrange[-1:1]


#Aumentamos la muestra para suavizar la gráfica
set isosamples 200


#Graficamos los sucesivos fotogramas
puntos=50
do for [t=0:puntos] {
	splot cos(x**2+y**2-t*2*pi/puntos)/sqrt(1+x**2+y**2)
}