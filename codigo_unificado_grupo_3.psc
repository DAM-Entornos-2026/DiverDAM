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
				Escribir "=================================================="
				Escribir "       |TAQUILLA, ALTURA Y CONTROL DE EDADES|"
				Escribir "=================================================="
				
				Definir edad, altura Como Entero
				Definir precioEntrada Como Real
				
				Si aforoParque >= aforoMaximoParque Entonces
					Escribir "El parque está completo."
					Escribir "Aforo actual: ", aforoParque, "/", aforoMaximoParque
				SiNo
					
					Escribir "Introduzca la edad del visitante:"
					Leer edad
					
					Escribir "Introduzca la altura del visitante en centimetros:"
					Leer altura
					
					Si edad < 0 O altura < 0 Entonces
						Escribir "ERROR: La edad y la altura no pueden ser negativas."
					SiNo
						
						Si edad < 4 Entonces
							
							Si altura >= 90 Entonces
								precioEntrada <- 0
								entradasGratis <- entradasGratis + 1
								aforoParque <- aforoParque + 1
								visitantesTotales <- visitantesTotales + 1
								
								Escribir ""
								Escribir "ENTRADA REGISTRADA"
								Escribir "Entrada GRATUITA"
								Escribir "Precio: 0 euros"
								
							SiNo
								Escribir "ACCESO DENEGADO."
								Escribir "Altura minima: 90 cm."
							FinSi
							
						SiNo
							
							Si edad <= 12 Entonces
								
								Si altura >= 100 Entonces
									precioEntrada <- 10
									entradasGenerales <- entradasGenerales + 1
									aforoParque <- aforoParque + 1
									visitantesTotales <- visitantesTotales + 1
									recaudacionTotal <- recaudacionTotal + precioEntrada
									
									Escribir ""
									Escribir "ENTRADA REGISTRADA"
									Escribir "Entrada INFANTIL"
									Escribir "Precio: ", precioEntrada, " euros"
									
								SiNo
									Escribir "ACCESO DENEGADO."
									Escribir "Altura minima: 100 cm."
								FinSi
								
							SiNo
								
								Si altura >= 120 Entonces
									precioEntrada <- 20
									entradasGenerales <- entradasGenerales + 1
									aforoParque <- aforoParque + 1
									visitantesTotales <- visitantesTotales + 1
									recaudacionTotal <- recaudacionTotal + precioEntrada
									
									Escribir ""
									Escribir "ENTRADA REGISTRADA"
									Escribir "Entrada GENERAL"
									Escribir "Precio: ", precioEntrada, " euros"
									
								SiNo
									Escribir "ACCESO DENEGADO."
									Escribir "Altura minima: 120 cm."
								FinSi
								
							FinSi
							
						FinSi
						
						Escribir ""
						Escribir "Aforo actual: ", aforoParque, "/", aforoMaximoParque
						Escribir "Visitantes totales: ", visitantesTotales
						Escribir "Entradas generales: ", entradasGenerales
						Escribir "Entradas gratuitas: ", entradasGratis
						Escribir "Recaudacion total: ", recaudacionTotal, " euros"
						
					FinSi
				FinSi
				
			2:
				// TODO: [Issue #3] Implementado por Developer 2
				Escribir "[PENDIENTE] Caso 4 no integrado. Esperando revisión en Code Review."
				
			3:
				aforoParque=aforoNoria+aforoMontañaRusa+aforoTazas+aforoToro
				aforoMaximoParque=400
				aforoNoria=0
				aforoMontañaRusa=0
				aforoTazas=0
				aforoToro=0
				Repetir
					tiempoEsperaMinutosNoria=aforoNoria*0.25
					tiempoEsperaMinutosMontañaRusa=aforoMontañaRusa*0.25
					tiempoEsperaMinutosTazas=aforoTazas*0.25
					tiempoEsperaMinutosToro=aforoToro*0.25
					Escribir "3. Control de Aforo por Zonas y Tiempo de Espera"
					escribir "¿De qué zona desea saber el aforo?"
					escribir "Noria"
					escribir "Montaña rusa"
					escribir "Tazas"
					escribir "Toro mecánico"
					leer zona
					si zona="Noria" Entonces
						escribir "El aforo de la zona " zona " es de " aforoNoria ", y el tiempo de espera es de " tiempoEsperaMinutosNoria " minutos"
					FinSi
					si zona="Montaña rusa" Entonces
						escribir "El aforo de la zona " zona " es de " aforoMontañaRusa ", y el tiempo de espera es de " tiempoEsperaMinutosMontañaRusa " minutos"
					FinSi
					si zona="Tazas" Entonces
						escribir "El aforo de la zona " zona " es de " aforoTazas ", y el tiempo de espera es de " tiempoEsperaMinutosTazas " minutos"
					FinSi
					si zona="Toro" Entonces
						escribir "El aforo de la zona " zona " es de " aforoToro ", y el tiempo de espera es de " tiempoEsperaMinutosToro " minutos"
					FinSi
					escribir "¿A qué zona vas a ir?"
					escribir "Noria"
					escribir "Montaña Rusa"
					escribir "Tazas"
					escribir "Toro mecánico"
					leer zona
					si zona="Noria" Entonces
						si aforoParque>=aforoMaximoParque entonces
							escribir "Lo sentimos, el parque está lleno"
						FinSi
						aforoNoria=aforoNoria+1
					FinSi
					si zona="Montaña rusa" Entonces
						si aforoParque>=aforoMaximoParque entonces
							escribir "Lo sentimos, el parque está lleno"
						FinSi
						aforoMontañaRusa=aforoMontañaRusa+1
					FinSi
					si zona="Tazas" Entonces
						si aforoParque>=aforoMaximoParque entonces
							escribir "Lo sentimos, el parque está lleno"
						FinSi
						aforoTazas=aforoTazas+1
					FinSi
					si zona="Toro" Entonces
						si aforoParque>=aforoMaximoParque entonces
							escribir "Lo sentimos, el parque está lleno"
						FinSi
						aforoToro=aforoToro+1
					FinSi
					escribir "Desea continuar?"
					escribir "Continuar"
					escribir "No"
					leer salir
				Hasta Que salir="Continuar"
				
			4:
				// TODO: [Issue #5] Implementado por Developer 4
				Escribir "[PENDIENTE] Caso 4 no integrado. Esperando revisión en Code Review."
				
			5:
				Definir expressVendidos, opcionCierre Como Entero
				Definir fondoInicial, efectivoContado, efectivoEsperado, diferencia Como Real
				Definir porcentajeAforo Como Real
				
				efectivoEsperado <- fondoInicial+recaudacionTotal
				expressVendidos <-30 - cupoExpress
				
				Escribir "--- RESUMEN DE VENTAS ---"
				Escribir "Visitantes totales atendidos: ", visitantesTotales
				Escribir "Entradas generales vendidas:  ", entradasGenerales
				Escribir "Entradas gratuitas emitidas:  ", entradasGratis
				Escribir "Pases Express vendidos:       ", expressVendidos, " de 30"
				Escribir "Recaudación total:            ", recaudacionTotal, " EUR"
				Escribir "Fondo de caja inicial:        ", fondoInicial, " EUR"
				Escribir "Efectivo esperado en caja:    ", efectivoEsperado, " EUR"
				Escribir ""
				
				Repetir
					Escribir "Introduzca el efectivo contado físicamente en caja (EUR):"
					Leer efectivoContado
					Si efectivoContado <0 Entonces
						Escribir "[ERROR] El efectivo no puede ser negativo."
					FinSi
				Hasta Que efectivoContado >=0
				
				diferencia<-efectivoContado-efectivoEsperado
				
				Escribir ""
				Escribir "--- RESULTADO DEL ARQUEO ---"
				Si abs(diferencia) <0.01 Entonces
					Escribir "[OK] Caja cuadrada. No hay diferencias."
				SiNo
					Si diferencia >0 Entonces
						Escribir "[AVISO] SOBRANTE de ", diferencia, " EUR en caja."
					SiNo
						Escribir "[AVISO] FALTANTE de ", abs(diferencia), " EUR en caja."
					FinSi
					Escribir "Revise tickets y cambios entregados antes de cerrar."
				FinSi
				
				
				Escribir ""
				Escribir "--- INFORME DE SEGURIDAD ---"
				porcentajeAforo <- aforoParque *100/ aforoMaximoParque
				Escribir "Personas dentro del parque: ", aforoParque, " / ", aforoMaximoParque
				Escribir "Ocupación actual:           ", porcentajeAforo, " %"
				
				Si aforoParque>=aforoMaximoParque Entonces
					Escribir "[ALERTA ROJA] Aforo completo. Prohibido el acceso."
				SiNo
					Si porcentajeAforo >=90 Entonces
						Escribir "[ALERTA NARANJA] Aforo casi completo (>=90%)."
					SiNo
						Si porcentajeAforo >=70 Entonces
							Escribir "[PRECAUCIÓN] Ocupación alta (>=70%)."
						SiNo
							Escribir "[NORMAL] Ocupación dentro de parámetros seguros."
						FinSi
					FinSi
				FinSi
				
				Si aforoParque >0 Entonces
					Escribir "[CIERRE] Aún quedan ", aforoParque, " personas en el parque. Confirme evacuación antes de cerrar."
				SiNo
					Escribir "[CIERRE] Parque vacío. Puede proceder al cierre."
				FinSi
				
				Escribir ""
				Escribir "Pulse 1 para volver al menú:"
				Leer opcionCierre
			
			0:
				Escribir "Cerrando el sistema DiverDAM... ¡Hasta pronto!"
				
			De Otro Modo:
				Escribir "[ERROR] Opción no válida. Introduzca un número entre 0 y 5."
		FinSegun
		
	Hasta Que opcionMenu = 0
	
FinAlgoritmo
