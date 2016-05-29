reset

plot "data_plot.dat" using 1:2

#Arreglamos el formato
set title "Título"
set xlabel "Time (s)"
set ylabel "Speed (m/s)"
set key top left

#Ejemplos de modificación de la representación de datos
#Introducir el uso de "test"
plot "data_plot.dat" u 1:2 w p pt 4 ps 2 lc 1 title "Experiment"
plot "data_plot.dat" u 1:2 w lp pt 4 ps 2 lc 1 title "Experiment"
plot "data_plot.dat" u 1:2 w d lc 1 title "Experiment"
plot "data_plot.dat" u 1:2 with dots lc 1 title "Experiment"
plot "data_plot.dat" u 1:2 with dots linecolor 1 title "Experiment"
plot "data_plot.dat" u 1:2 with p linecolor 1 title "Experiment"
plot "data_plot.dat" u 1:2 with p linecolor 2 title "Experiment"
plot "data_plot.dat" u 1:2 with p linecolor rgb "red" title "Experiment"
plot "data_plot.dat" u 1:2 with l linecolor rgb "red" title "Experiment"
plot "data_plot.dat" u 1:2 with l linecolor rgb "red" lw 2 title "Experiment"
plot "data_plot.dat" u 1:2 with lp lc rgb "red" lw 2 title "Experiment"
plot "data_plot.dat" u 1:2 with lp pt 1 lc rgb "blue" lw 2 title "Experiment"
plot "data_plot.dat" u 1:2 with lp pt 1 lc rgb "red" lw 2 title "Experiment"
plot "data_plot.dat" u 1:2 w lp pt 1 lc rgb "red" lw 2 title "Experiment"

#problema puntos
plot "data_plot.dat" u 1:2:3:4 w xyerr title "Experiment", "data_plot.dat" u 1:2:3:4 w xyerr title "prueba"
plot "data_plot.dat" u 1:2:3:4 with xyerr ps 0 title "Experiment", "data_plot.dat" u 1:2:3:4 with xyerr ps 0 title "prueba"

#barras de error + lineas
plot "data_plot.dat" u 1:2:3:4 with xyerr ps 0 lc rgb "red" title "Experiment", "data_plot.dat" u 1:2 w l lc rgb "red" notitle

#linea discontinua
plot "data_plot.dat" u 1:2:3:4 with xyerr ps 0 lc rgb "red" title "Experiment", "data_plot.dat" u 1:2 w l lc rgb "red" dt 5 notitle


#Añadimos las barras de error y el título en la leyenda
plot "data_plot.dat" u 1:2:3:4 with xyerr title "Experiment"


#Ajustamos los datos por una recta
f(x)=a1+b1*x

set fit errorvariables	#Habilita el almacenamientro de errores en variables llamadas "variable_err"
fit f(x) "data_plot.dat" u 1:2 via a1,b1	#le decimos a gnuplot que ajuste los datos a la función definida usando los parámetros indicados
rep f(x)

#Ajustamos los datos por un polinomio de grado 4
g(x)=a2+b2*x+c2*x*x+d2*x*x*x+e2*x*x*x*x
fit g(x) "data_plot.dat" u 1:2 via a2,b2,c2,d2,e2
rep g(x)


#pintamos los datos con la regresión lineal
plot "data_plot.dat" u 1:2:3:4 w xyerr ps 0 title "Experiment", f(x) title "f(x)"

#también podemos personalizar los "titulos" con los valores obtenidos en el ajuste
plot "data_plot.dat" u 1:2:3:4 w xyerr ps 0 title "Experiment", f(x) title sprintf("%.2f+%.2fx",a1,b1)

#Con los errores
#set fit errorvariables
plot "data_plot.dat" u 1:2:3:4 w xyerr ps 0 title "Experiment", f(x) title sprintf("(%.2f+-%.2f)+(%.2f+-%.2f)x",a1,a1_err,b1,b1_err)

#Usando el simbolo +- para postscript terminal
plot "data_plot.dat" u 1:2:3:4 w xyerr ps 0 title "Experiment", f(x) title sprintf("(%.2f{/Symbol \261}%.2f)+(%.2f{/Symbol \261}%.2f)x",a1,a1_err,b1,b1_err)

#Añadimos puntos al eje y ponemos una cuadricula
set xtics 1		#se deshace con "set xtics autofreq"
set grid


pause -1
set term postscript enhanced color
set output "data_plot.eps"
replot
