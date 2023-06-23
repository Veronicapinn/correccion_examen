//correcion del examen.

//Nombre y apellido: Veronica Pin Suarez            //Paralelo: B2


//2)dado el siguiente algoritmo ¿indique que linea se puede modificar para el seudocodigo 
//imprime un triangulo de * tal com se indica en la salida?
//nota: escribir 'ok Sin saltar // se imprime ok y el curso se queda en la misma linea" 
Funcion triangulo_estrellas()                                    
	definir n,i,j Como Entero;                                                        
	n=5;                                     
	para i<-1 Hasta n                       
		Para j<-1 Hasta i                    
			Escribir "*" Sin Saltar;
		FinPara
		Escribir "*";
	FinPara
FinFuncion

//3) ¿cual es el resultado que representa la variable x en el siguiente seudocodigo?
Funcion expresion()
	Definir a,b,x Como Entero;
	a=3; b=6;
	x=a*(a+b)-b*a+(trunc(b/3)-2+a*a mod 2);
	Escribir "la respuesta es: ",x;
FinFuncion

// 5) //realizar un seudocodigo que permita ingresar  una expresion matematicas caracter
//por caracter. a final debera presentar el operador matematico con mayor repeticiones. los 
//operadores matematicos son : (*,+,-,/). el programa finaliza cuando se ingrese una 'F'
//ejemplo: si la expresion= '(4+2) * 5/2 - (5+2+3)'
//presentara 'el cart '+'tiene el mayor repeticiones',3

Funcion presentar()
	Definir cantidadmas, cantidadmenos,cantidadpor,cantidadDiv,repeticiones,i como Entero;
	Definir car,operadorMay como Caracter;
	cantidadmas=0;cantidadmenos=0;cantidadpor=0;cantidadDiv=0;i=1;
	car="";
	Escribir "Ingrese la expresion matematica caracter por caracter";
	Mientras car <> "F" Hacer
		Escribir "Ingrese caracter ",i ": "Sin Saltar;
		Leer car;
		i=i+1;
		Si car = '+' entonces
			cantidadmas = cantidadmas + 1;
		Sino
			Si car = '-' Entonces
				cantidadmenos = cantidadmenos + 1;
			SiNo
				Si car = '*' Entonces
					cantidadpor = cantidadpor + 1;
				SiNo
					Si car = '/' Entonces
						cantidadDiv = cantidadDiv + 1;
					Fin Si
				Fin Si
			Fin Si
		FinSi
	Fin Mientras
	operadorMay = "";
	repeticiones = 0;
	Si cantidadmas > repeticiones Entonces
		repeticiones = cantidadmas;
		operadorMay = "+";
	Fin Si
	
	Si cantidadmenos > repeticiones Entonces
		repeticiones = cantidadmenos;
		operadorMay = "-";
	Fin Si
	
	Si cantidadpor > repeticiones Entonces
		repeticiones = cantidadpor;
		operadorMay = "*";
	Fin Si
	
	Si cantidadDiv > repeticiones Entonces
		repeticiones = cantidadDiv;
		operadorMay = "/";
	Fin Si
	Escribir "El operador mas repetido es: ",operadorMay;
FinFuncion

//6) /elaborar un algoritmo ta, que dado un nombre y la edad en años. calcule el numero 
//de pulsaciones que debe tener por cada segundo de ejercicio segun la edad de la persona 
//la formula de las pulsaciones es: pulsaciones =(200-edad)/base. el valor de la base=10 
//si la edad esta entre 1-9 años se aplica la formula con base de 10; si es menor 
//de edad a la base se le incrementa un 10%; si es mayor de edad la base se incrementa un 15%
//para todos los casos las pulsaciones= (200-edad)/base. debe presentar la eda y las pulsaciones 
//calculada.
Funcion edad_pulsaciones()
	Definir nombre Como Cadena;
    Definir edad, base, pulsaciones Como real;
    Escribir "Ingrese su nombre:"Sin Saltar;
    Leer nombre;
    Escribir "Ingrese su edad :"Sin Saltar;
    Leer edad;
	base<-10;
    Si edad <= 9 Entonces
		pulsaciones<-(200-edad)/base+0.10;
		Escribir "Edad:", edad;
		Escribir "Pulsaciones por segundo de ejercicio:", pulsaciones;
	SiNo
		Si edad > 18 Entonces
			pulsaciones<-(200-edad)/base+0.15;
			Escribir "Edad:", edad;
			Escribir "Pulsaciones por segundo de ejercicio:", pulsaciones;
		Sino
			pulsaciones <- (200 - edad)/base;
			Escribir "Edad:", edad;
			Escribir "Pulsaciones por segundo de ejercicio:", pulsaciones;
		FinSi
	FinSi
FinFuncion

// 7) elaborar un seudocodigo que deado una serie de numeros presente aquellos numeros positivos 
//que son multiplos de 3 y 4 ; al final presentar la cantidad de los numero negativos que no sean multiplos de 3 y 4? 
Funcion multiplos()
	Definir cantidad_numeros, num_actual, cantidad_negativos,num como entero;
    cantidad_numeros <- 0;
    cantidad_negativos <- 0;
	Escribir "Digite la cantidad de numeros:";
	Leer num;
    Para i desde 1 hasta num hacer 
        Escribir "Ingrese un número:" , i ":";
		Leer num_actual;
        Si (num_actual > 0) Y ((num_actual % 3 = 0) Y (num_actual % 4 = 0)) Entonces
            Escribir "El número " , num_actual , " es positivo y es múltiplo de 3 y 4";
        FinSi
        Si (num_actual < 0) Y ((num_actual % 3 <> 0) Y (num_actual % 4 <> 0)) Entonces
            cantidad_negativos <- cantidad_negativos + 2;
        FinSi
		
    FinPara
    Escribir "La cantidad de números negativos que no son múltiplos de 3 y 4 es: ", cantidad_negativos;
FinFuncion

Algoritmo ejercicios
	triangulo_estrellas;
	expresion;
	presentar;
	edad_pulsaciones;
	multiplos;
FinAlgoritmo









