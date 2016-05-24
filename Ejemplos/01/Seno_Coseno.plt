#
#

reset 	#iniciamos siempre el código de gnuplot con reset
		#reestablece todas las opciones alteradas previamente

plot sin(x)	#crea una gráfica con la función seno
			#x,y,z son las variables por defecto representadas en los ejes
			
#gnuplot reconoce la mayoría de funciones de C

set xrange [0:2*pi]	#establece el rango de valores representados en el eje X
					#pi es un valor reconocido

replot		#repite el último plot con el formato especificado desde entonces

set yrange [-2:2]	#establece el rango de valores representados en el eje Y

rep			#abreviatura de "replot"

set autoscale y		#reestablece el valor por defecto para el rango en el eje Y

rep

plot cos(x)		#dibujamos un coseno

rep sin(x)		#añadimo la gráfica del seno

#Usando title cambiamos la leyenda
plot sin(x) title "curva 1", cos(x) title "curva 2"

#Le ponemos título a la gráfica
set title "Título de la gráfica"

#Y a los ejes
set xlabel "Eje X"
set ylabel "Eje Y"

#Quitamos la leyenda
unset key

#Recuperamos la leyenda
set key

#Movemos la leyenda abajo a la izquierda
set key left bottom

#Le ponemos ponemos título
set key title "Leyenda"

#La metemos en una caja
set key box

#La devolvemos arriba a la derecha
set key right top

#La hacemos opaca
set key opaque

#Quitamos la caja
set key nobox

#Movemos fuera la leyenda y la devolvemos dentro
set key outside
set key inside

#Forzamos a que se dibujen los ejes X e Y
set xzeroaxis
set yzeroaxis

#Añadimos una cuadricula
set grid

#save/load "file_name"
#

#espera "enter" para continuar
pause -1

set encoding utf8

set term postscript enhanced color

set output "Seno_Coseno.eps"

rep
