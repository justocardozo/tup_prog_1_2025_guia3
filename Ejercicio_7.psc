Proceso CalcularCompra
    Definir cantidad, precioUnitario Como Real;
    Definir totalPagar, totalProductos Como Real;
	
    totalPagar <- 0;
    totalProductos <- 0;
	
    Escribir "Ingrese la cantidad del producto (0 para finalizar):";
    Leer cantidad;
	
    Mientras cantidad <> 0 Hacer;
        Escribir "Ingrese el precio unitario:";
        Leer precioUnitario;
		
        totalPagar <- totalPagar + (cantidad * precioUnitario);
        totalProductos <- totalProductos + cantidad;
		
        Escribir "Ingrese la cantidad del siguiente producto (0 para finalizar):";
        Leer cantidad;
    FinMientras;
	
    Escribir "Total de productos adquiridos: ", totalProductos;
    Escribir "Total a pagar: $", totalPagar;
FinProceso
