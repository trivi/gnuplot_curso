reset

set term postscript enhanced color
set output "Histograma_1.eps"
set xlabel "Year"
set ylabel "Profit(Million Dollars)"
set grid

#seleccionamos el tamaño "porcentual" que ocupara el recuadro
set boxwidth 0.95 relative

#seleccionamos la forma de relleno de las barras: 50% transparencia y sin líneas de borde
set style fill transparent solid 0.5 noborder

#representamos la gráfica usando las 2 primeras columnas usando cajas para el "efecto" histograma
plot "Histograma.dat" u 1:2 w boxes lc rgb"green" notitle