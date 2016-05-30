reset 

#Graficamos en 3d las superficies correspondientes a 2 funciones
splot x**2+y**2, x**2-y**2

#Rectificamos los títulos
splot x**2+y**2 title "x^2+y^2", x**2-y**2 title "x^2-y^2"


#Nos quedamos solo con la segunda
splot x**2-y**2 title "x^2-y^2"

#Rellenamos con color
set pm3d

#Nos llevamos el color abajo (b). Para ponerlo en la superficie (s) y arriba (t) sirven los mismos comandos
set pm3d at b

#aumentamos la muestra en Y
set isosamples 10,100

#creamos líneas de nivel
set contour

#Eliminamos las líneas de la gráfica 3d
set hidden3d

#Mejoramos la muestra para dar la salida
set isosamples 100, 100


pause -1


set encoding utf8
set term postscript enhanced color
set output "potencias.eps"

rep


#Representamos la proyeccion
unset key
set pm3d map

rep
