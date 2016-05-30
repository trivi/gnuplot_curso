//Este programa calcula el número PI a partir pares de números aleatorios

#include <iostream>
#include <cstdlib>
#include <ctime>
#include <cmath>
#include <new>
#include <fstream>

using namespace std;

int main () {
	
	const double pi=3.141592653589793;	//tomamos pi de otra fuente para poder compararlo
	double pi_aleatorios;				//donde guardaremos el valor calculado de pi
	double x,y;							//variables para almacenar las coordenadas aleatoriamente generadas
	
	//punteros para almacenar las coordenadas aleatoriamente generadas en vectores dinámicos
	double * X;
	double * Y;
	
	int n;								//número de pares de aleatorios que usaremos usar
	int numerador=0;					//número de puntos que pertenecen al cuarto de circulo tenido en cuenta (inicialmente 0)
	ofstream myfile;					//Archivo para gnuplot
	
	myfile.open("Pi.plt");
	
	//Inicializamos el generador de aleatorios usando el reloj del ordenador
	srand(time(NULL));
	
	
	//Pedimos el número de pares de aleatorios para realizar el cálculo
	cout << "Introduzca el número de parejas de aleatorios con que quiere realizar el cálculo" << endl;
	cin >> n;

	//Dimensionamos los vectores
	X=new double [n];
	Y=new double [n];
	
	//Configuramos el formato de la gráfica
	myfile << "reset" << endl << 
	"set parametric" << endl << 
	"set samples 1000" << endl << 
	"set xrange[-1:1]" << endl << 
	"set yrange[-1:1]" << endl << 
	"unset key" << endl;
	
	
	
	
	for(int i=0; i<n; i++) {
		
		//calculamos las coordenadas
		X[i]=(double)rand()/(double)RAND_MAX*2.0-1.0;
		Y[i]=(double)rand()/(double)RAND_MAX*2.0-1.0;
		
		
		//comprobamos si el punto generado está dentro del círculo o no (si lo está lo recordamos)
		if (X[i]*X[i]+Y[i]*Y[i]<1) numerador++;
		
		//calculamos el valor parcial de pi con una simple división
		pi_aleatorios=4.0*(double)numerador/(double)(i+1);
		
		
		//Escribimos el valor parcial obtenido y los puntos generados
		myfile << "set title \"{/Symbol p}=" << pi_aleatorios << " n=" << i+1 << "\"" << endl;		//El título

		myfile << "plot cos(t), sin(t), \'-\' w p pt 1" << endl;
		
		//Añadimos los datos por líneas separados por tabuladores
		for(int j=0; j<=i; j++) {
			myfile << X[j] << "\t" << Y[j] << endl;
		}
		//Cerramos la petición de datos con "e"
		myfile << "e" << endl << endl;
				
		
	}
	
	//Pausamos al finalizar
	myfile << "pause -1" << endl;

	
	
	//Liberamos la memoria dinámica
	delete[] X;
	delete[] Y;
	//Cerramos el fichero
	myfile.close();
	
	
	return 0;
	
}
