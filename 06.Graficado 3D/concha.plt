reset

#Seleccionamos el graficado de funciones paramétricas
set parametric

#Graficamos 
splot cos(u)*u*(1+cos(v)/2),sin(v)*u/2,sin(u)*u*(1+cos(v)/2) w l

#Seleccionamos el tamaño de la muestra en u,v
set isosamples 40, 20

#Ajustamos la posición del eje Z
set ticslevel 0

#Limitamos el rango de los parametros u,v
set urange [0:2*pi]
set vrange [0:2*pi]

#Cambiamos cómo se presentan los colores en las líneas interiores/exteriores
set hidden3d

#Eliminamos la leyenda y añadimos el título
unset key
set title "Concha"

#Eliminamos los valores de los ejes y los propios ejes
unset tics
unset border

rep


#Pausamos y exportamos a un fichero el resultado
pause -1

set term postscript enhanced color
set output "concha.eps"
rep

