reset

#seleccionamos la terminal apropiada para la salida
set term gif animate delay 10
set output "onda.gif"

#Fijamos el rango del gráfico en X e Y
set xrange[-2*pi:2*pi]
set yrange[-2*pi:2*pi]

#Seleccionamos las opciones de color y lineas de la gráfica
set pm3d at b
set hidden3d

#Eliminamos la leyenda
unset key
#Eliminamos la leyenda de colores y los ejes
unset colorbox
unset tics
unset border


#Ajustamos la posición del eje Z
set zrange[-1:1]


#Aumentamos la muestra para suavizar la gráfica
set isosamples 200


#Graficamos los sucesivos fotogramas
do for [t=0:50] {
	splot cos(x**2+y**2-t*2*pi/50)/sqrt(1+x**2+y**2)
}
