Proceso EjercicioGenerarNumP
    Definir num1, num2, menor, mayor, i, j Como Entero;
    Definir esPrimo Como Logico;
	
    Escribir "Ingrese el primer número del rango:";
    Leer num1;
    Escribir "Ingrese el segundo número del rango:";
    Leer num2;
	
 
    Si num1 < num2 Entonces
        menor <- num1;
        mayor <- num2;
    Sino
        menor <- num2;
        mayor <- num1;
    FinSi
	

    Para i <- menor Hasta mayor Hacer;
   
        Si i > 1 Entonces
            esPrimo <- Verdadero;
            Para j <- 2 Hasta i - 1 Hacer;
                Si i % j = 0 Entonces
                    esPrimo <- Falso;
                FinSi
				
			FinPara;
		
			
            Si esPrimo Entonces
			
                Escribir i, " es primo";
            FinSi
        FinSi
    FinPara
FinProceso
