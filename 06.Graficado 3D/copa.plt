reset

#Graficamos los datos que se encuantran en el fichero "glass.dat"
splot "glass.dat" w l

#Eliminamos la leyenda
unset key

#Ponemos nombres a los ejes
set xlabel "Eje X"
set ylabel "Eje Y"
set zlabel "Eje Z"

#Añadimos color gradual a la superficie
set pm3d

#Eliminamos las lineas del gráfico
set hidden3d

#Movemos el origen del eje Z
set ticslevel 0

#"Estilizamos" un poco la copa
set xrange[-1.5:1.5]
set yrange[-1.5:1.5]


rep

#Pausa y volcado del gráfico a un fichero
pause -1

set term postscript enhanced color
set output "copa.eps"
rep
