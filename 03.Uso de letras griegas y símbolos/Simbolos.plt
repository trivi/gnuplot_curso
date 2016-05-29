reset

#vamos a aprender a usar las letras griegas y otros simbolos en gnuplot (funcionan al menos en la terminal postscript enhanced)

#representamos una función cualquiera para poder modificar el formato y practicar
plot x
plot x title "{/Symbol x}"

#Llamaremos alpha al eje X y betta al eje Y
set xlabel "{/Symbol a}"
set ylabel "{/Symbol b}"

#vemos cómo queda
rep

#Ponemos un título que use letras griegas, exponentes y subindices
set title "Letras {/Symbol griegas}, exponentes^{exponente} y subindices_{sub}

set term postscript enhanced color
set output "Simbolos.eps"

rep
