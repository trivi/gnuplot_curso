reset


#Seleccionamos inicialmente la terminal de salida, ya que no nos servirá hacer replot al final
set encoding utf8
set term postscript enhanced color
set output "sin_cos.eps"


#Seleccionamos el tamaño del "lienzo" en tanto por 1 (1x1 por defecto)
set size 1,1

#Habilitamos la opción para incluir varias gráficas (El título no funciona en postscript por algún motivo)
set multiplot title "{/Bold=20 Comparación de senos y cosenos}"


#Fijamos el rango en x para que coincida entre gráficos (se puede especificar individualmente en cada gráfico)
set xrange [-2*pi:2*pi]

#Algunas opciones de formato conocidas
set key box opaque
set samples 10000


# Primero: sin(x)

#Seleccionamos el tamaño a 1/4 de la plantilla (x,y) y la posición arriba a la izquierda (x,y)
set size 0.5,0.475
set origin 0,0.475

plot sin(x) lt 1 title "sin(x)"


# Segundo: sin(2x)

#Seleccionamos el tamaño a 1/4 de la plantilla (x,y) y la posición arriba a la izquierda (x,y)
set size 0.5,0.475
set origin 0.5,0.475

plot sin(2*x) lt 2 title "sin(2x)"


# Tercero: cos(x)

#Seleccionamos el tamaño a 1/4 de la plantilla (x,y) y la posición arriba a la izquierda (x,y)
set size 0.5,0.475
set origin 0,0

plot cos(x) lt 3 title "cos(x)"


# Cuarto: cos(2x)

#Seleccionamos el tamaño a 1/4 de la plantilla (x,y) y la posición arriba a la izquierda (x,y)
set size 0.5,0.475
set origin 0.5,0

plot cos(2*x) lt 4 title "cos(2x)"


#Deshabilitamos la opción para multiplot
unset multiplot
