Proceso EsPrimo
    Definir numero, i, contadorDivisores Como Entero;
	
    Escribir "Ingrese un n�mero entero:";
    Leer numero;
	
    contadorDivisores <- 0;
	
    Para i <- 1 Hasta numero Con Paso 1 Hacer
        Si numero % i = 0 Entonces
			
            contadorDivisores <- contadorDivisores + 1;
        FinSi;
    FinPara;
	
    Si contadorDivisores = 2 Entonces
        Escribir "El n�mero ", numero, " es primo.";
    Sino;
        Escribir "El n�mero ", numero, " no es primo.";
    FinSi;
FinProceso
