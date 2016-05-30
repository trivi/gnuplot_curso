reset


#Seleccionamos inicialmente la terminal de salida, ya que no nos servirá hacer replot al final
set term postscript enhanced color
set output "onda3D.eps"


#Seleccionamos el tamaño del "lienzo" en tanto por 1
set size 0.5,1

#Habilitamos la opción para incluir varias gráficas
set multiplot

#Elimnamos las leyendas
unset key


# Primero: sin(x)

#Seleccionamos el tamaño a 1/2 de la plantilla (x,y)
set size 0.5,0.5
set origin 0,0

#Fijamos el rango del gráfico en X e Y
set xrange[-pi:pi]
set yrange[-pi:pi]

#Seleccionamos las opciones de color y lineas de la gráfica
set pm3d
set hidden3d

#Ajustamos la posición del eje Z
set ticslevel 0

#Aumentamos la muestra para suavizar la gráfica
set isosamples 100

#Ploteamos la gráfica en 3D
splot cos(x**2+y**2)/sqrt(1+x**2+y**2)



# Segundo: sin(2x)

#Seleccionamos el tamaño a 1/2 de la plantilla (x,y)
set size 0.5,0.5
set origin 0,0.5

#Añadimos líneas de nivel
set contour

#Mandamos las gráfica al plano
set pm3d map

#Grabamos la gráfica con las nuevas opciones
rep




#Deshabilitamos la opción para multiplot
unset multiplot
