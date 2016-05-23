reset
set term postscript enhanced color
set output "Histograma_1.eps"
set xlabel "Year"
set ylabel "Profit(Million Dollars)"
set grid
set boxwidth 0.95 relative
set style fill transparent solid 0.5 noborder
plot "Histograma.dat" u 1:2 w boxes lc rgb"green" notitle