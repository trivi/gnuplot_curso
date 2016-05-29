#Fuente: http://gnuplot-surprising.blogspot.com.es/2011/09/plot-histograms-using-boxes.html

reset

#creamos algunas variables para almacenar los datos
dx=5.		#distancia entre barras
n=2		#número de barras por cada valor de x
total_box_width_relative=0.75		#espacio ocupado por las barras
gap_width_relative=0.1				#distancia % entre las barras

#calculamos la distancia entre las barras
d_width=(gap_width_relative+total_box_width_relative)*dx/2.

reset

#seleccionamos la terminal de salida
set term postscript enhanced color
set output "Histograma_2.eps"

#algunos datos de formato
set xlabel "Year"
set ylabel "Profit(Million Dollars)"
set grid

#seleccionamos el ancho de la barra
set boxwidth total_box_width_relative/n relative

#Damos formato a las barras
set style fill transparent solid 0.5 noborder

#graficamos
plot "Histograma.dat" u 1:2 w boxes lc rgb"green" notitle,\
     "Histograma.dat" u ($1+d_width):3 w boxes lc rgb"red" notitle 
