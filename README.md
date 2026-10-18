# DiverDAM
Software en PSeInt para el TPV de taquillas y atención al cliente de DiverDAM. Incluye venta de entradas por edad/altura, Pases Express con cupo diario, control de aforo por zonas con tiempos de espera, descuentos de grupo y arqueo final de caja. Desarrollado con metodología Scrumban en GitHub Projects.

**Código base**

```
Algoritmo DiverDAM_Master
	
	// =========================================================================
	// DECLARACIÓN E INICIALIZACIÓN DE VARIABLES GLOBALES
	// =========================================================================
	Definir aforoParque, aforoMaximoParque, entradasGenerales, entradasGratis Como Entero
	Definir cupoExpress, visitantesTotales, opcionMenu Como Entero
	Definir recaudacionTotal Como Real
	
	// Valores iniciales según plantilla maestra
	aforoParque <- 0
	aforoMaximoParque <- 80
	entradasGenerales <- 0
	entradasGratis <- 0
	cupoExpress <- 30
	recaudacionTotal <- 0.0
	visitantesTotales <- 0
	
	// =========================================================================
	// BUCLE PRINCIPAL DE NAVEGACIÓN Y MENÚ
	// =========================================================================
	Repetir
		Escribir ""
		Escribir "=================================================="
		Escribir "     SISTEMA DE GESTIÓN CENTRALIZADA DIVERDAM     "
		Escribir "=================================================="
		Escribir "1. Taquilla, Calibración de Altura y Edades"
		Escribir "2. Venta de Pases Express y Control de Cupo"
		Escribir "3. Control de Aforo por Zonas y Tiempo de Espera"
		Escribir "4. Descuento de Grupo, Cobro y Cambio"
		Escribir "5. Arqueo de Caja e Informe de Seguridad"
		Escribir "0. Salir del programa"
		Escribir "--------------------------------------------------"
		Escribir "Seleccione una opción (0-5):"
		Leer opcionMenu
		Escribir ""
		
		Segun opcionMenu Hacer
			1:
				// TODO: [Issue #2] Implementado por Developer 1
				Escribir "[PENDIENTE] Caso 1 no integrado. Esperando revisión en Code Review."
				
			2:
				// TODO: [Issue #3] Implementado por Developer 2
				Escribir "[PENDIENTE] Caso 2 no integrado. Esperando revisión en Code Review."
				
			3:
				// TODO: [Issue #4] Implementado por Developer 3
				Escribir "[PENDIENTE] Caso 3 no integrado. Esperando revisión en Code Review."
				
			4:
				// TODO: [Issue #5] Implementado por Developer 4
				Escribir "[PENDIENTE] Caso 4 no integrado. Esperando revisión en Code Review."
				
			5:
				// TODO: [Issue #6] Implementado por Developer 5
				Escribir "[PENDIENTE] Caso 5 no integrado. Esperando revisión en Code Review."
				
			0:
				Escribir "Cerrando el sistema DiverDAM... ¡Hasta pronto!"
				
			De Otro Modo:
				Escribir "[ERROR] Opción no válida. Introduzca un número entre 0 y 5."
		FinSegun
		
	Hasta Que opcionMenu = 0

FinAlgoritmo
```
