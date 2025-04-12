Proceso EvaluacionProgramacion
    Definir nota, cantidadNotas, sumaNotas Como Real;
    Definir aprobados, noAprobados Como Entero;
    Definir muyBuenos, buenos, regulares, insuficientes Como Entero;
    Definir promedio, porcentajeMuyBuenos, porcentajeBuenos, porcentajeRegulares, porcentajeInsuficientes Como Real;
	
  
    cantidadNotas <- 0;
    sumaNotas <- 0;
    aprobados <- 0;
    noAprobados <- 0;
    muyBuenos <- 0;
    buenos <- 0;
    regulares <- 0;
    insuficientes <- 0;
	
    Escribir "Ingrese las notas (entre 0 y 10). Ingrese -1 para terminar:";
	
    Leer nota;
    Mientras nota <> -1 Hacer;
        Si nota >= 0 y nota <= 10 Entonces
            cantidadNotas <- cantidadNotas + 1;
            sumaNotas <- sumaNotas + nota;
			
           
            Si nota >= 6 Entonces
                aprobados <- aprobados + 1;
            Sino;
                noAprobados <- noAprobados + 1;
            FinSi
			
            Si nota >= 8 Entonces
                muyBuenos <- muyBuenos + 1;
            Sino
                Si nota >= 6 Entonces
                    buenos <- buenos + 1;
                Sino
                    Si nota >= 4 Entonces
                        regulares <- regulares + 1;
                    Sino
                        insuficientes <- insuficientes + 1;
                    FinSi
                FinSi
            FinSi
        Sino
            Escribir "Nota inválida. Ingrese un valor entre 0 y 10, o -1 para terminar.";
        FinSi
		
        Leer nota;
    FinMientras
	
    Si cantidadNotas > 0 Entonces
        promedio <- sumaNotas / cantidadNotas;
		
        porcentajeMuyBuenos <- muyBuenos * 100 / cantidadNotas;
        porcentajeBuenos <- buenos * 100 / cantidadNotas;
        porcentajeRegulares <- regulares * 100 / cantidadNotas;
        porcentajeInsuficientes <- insuficientes * 100 / cantidadNotas;
		
        Escribir "Cantidad total de notas: ", cantidadNotas;
        Escribir "Promedio general: ", promedio;
        Escribir "Cantidad de aprobados: ", aprobados;
        Escribir "Cantidad de no aprobados: ", noAprobados;
        Escribir "Porcentaje Muy Buenos (8 o más): ", porcentajeMuyBuenos, "%";
        Escribir "Porcentaje Buenos (6 o 7): ", porcentajeBuenos, "%";
        Escribir "Porcentaje Regulares (4 o 5): ", porcentajeRegulares, "%";
        Escribir "Porcentaje Insuficientes (3 o menos): ", porcentajeInsuficientes, "%";
    Sino
        Escribir "No se ingresaron notas válidas.";
    FinSi
FinProceso
