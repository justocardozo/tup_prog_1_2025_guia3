Proceso Ejercicio_tornillos
	
    Definir codigoLote, i Como Entero;
    Definir medidaEsperada, medicion, error, mayorError Como Real;
    Definir fallasLote, fallasTotales, tornillosTotales, lotesProcesados Como Entero;
    Definir minFallas, maxFallas, codigoMinFalla, codigoMaxFalla Como Entero;
	
    fallasTotales <- 0;
    tornillosTotales <- 0;
    lotesProcesados <- 0;
    minFallas <- -1;
    maxFallas <- -1;
	
    Repetir
		
        Escribir "Ingrese el código del lote (0 para terminar):";
        Leer codigoLote;
		
        Si codigoLote <> 0 Entonces
			
            Escribir "Ingrese la medida esperada:";
            Leer medidaEsperada;
			
            mayorError <- 0;
            fallasLote <- 0;
			
            Para i <- 1 Hasta 10 Hacer
				
                Escribir "Ingrese la medición del tornillo ", i, ":";
                Leer medicion;
				
                error <- Abs(medicion - medidaEsperada);
				
                Si error > mayorError Entonces
                    mayorError <- error;
                FinSi;
				
                Si error > 0.1 Entonces
                    fallasLote <- fallasLote + 1;
                FinSi;
				
            FinPara;
			
            
            Escribir "Mayor error absoluto del lote: ", mayorError;
            Escribir "Porcentaje de fallas del lote: ", (fallasLote / 10) * 100, "%";
			
            
            fallasTotales <- fallasTotales + fallasLote;
            tornillosTotales <- tornillosTotales + 10;
            lotesProcesados <- lotesProcesados + 1;
			
           
            Si minFallas = -1 O fallasLote < minFallas Entonces
                minFallas <- fallasLote;
                codigoMinFalla <- codigoLote;
            FinSi;
			
            Si fallasLote > maxFallas Entonces
                maxFallas <- fallasLote;
                codigoMaxFalla <- codigoLote;
            FinSi;
			
        FinSi;
		
    Hasta Que codigoLote = 0;
	
   
    Escribir "Cantidad total de lotes procesados: ", lotesProcesados;
	
    Si tornillosTotales > 0 Entonces
        Escribir "Porcentaje total de fallas: ", (fallasTotales / tornillosTotales) * 100, "%";
        Escribir "Lote con menor cantidad de fallas: ", codigoMinFalla, " (", minFallas, " fallas)";
        Escribir "Lote con mayor cantidad de fallas: ", codigoMaxFalla, " (", maxFallas, " fallas)";
    FinSi;
	
FinProceso
