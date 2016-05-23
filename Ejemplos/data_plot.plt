#Esto es un comentario, también sirve para comentar código gnuplot

set title "Título"
set xlabel "Time (s)"
set ylabel "Speed (m/s)"
set key top left

#set xrange[0:16]
y(x)=a+b*x
fit y(x) "datos1.txt" u 1:2 via a,b
plot "datos1.txt" u 1:2 w p pt 4 ps 2 lc 1 title "Experiment", "datos1.txt" u 1:3 w l lt 1 lc 2 title "Model 1", "datos1.txt" u 1:4 w l lt 2 lc 3 title "Model 2", y(x) lt 2 lc 4 title "Fit", "Interpol.txt" u 1:2 w l lt 1 lc 9 title "Interpolation"
pause -1
set term postscript enhanced color
set output "grafica.eps"
replot
