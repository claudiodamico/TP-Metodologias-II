"Filed out from Dolphin Smalltalk 7"!

Object subclass: #Reserva
	instanceVariableNames: 'codigo_reserva hora_reserva destino fecha cliente'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Reserva guid: (GUID fromString: '{AA4F9A87-EEA6-4B9E-9A1F-86B906119546}')!
Reserva comment: ''!
!Reserva categoriesForClass!Kernel-Objects! !
!Reserva methodsFor!

dia
	"Retorna la fecha de la reserva"

	^fecha!

dia: unaFecha
	"Modifica la fecha de una reserva"

	fecha := unaFecha!

iniReservaCod: unCodigo hora: unaHora fecha: unaFecha dest: unDestino cliente: unCliente
"Inicializa una instancia de reserva"
codigo_reserva:=unCodigo.
hora_reserva:=unaHora.
destino:=unDestino.
fecha:=unaFecha.
cliente:=unCliente. !

modiCliente: unCliente
"Modifica el cliente que hace la reserva"
cliente:= unCliente. !

modiDestino: unDestino
"Modifica el destino de una reserva"
destino:=unDestino. !

modiHoraReserva: unaHora
"Modifica la hora de la reserva"
hora_reserva:= unaHora. !

verCliente
"Retorna el cliente de la reserva"
^cliente. !

verCodigoReserva
"Retorna el codigo de la reserva"
^codigo_reserva.!

verDestino
"Retorna  el destino de la reserva"
^destino. !

verHoraReserva
"Retorna la hora de la reserva"
^hora_reserva. ! !
!Reserva categoriesFor: #dia!public! !
!Reserva categoriesFor: #dia:!public! !
!Reserva categoriesFor: #iniReservaCod:hora:fecha:dest:cliente:!public! !
!Reserva categoriesFor: #modiCliente:!public! !
!Reserva categoriesFor: #modiDestino:!public! !
!Reserva categoriesFor: #modiHoraReserva:!public! !
!Reserva categoriesFor: #verCliente!public! !
!Reserva categoriesFor: #verCodigoReserva!public! !
!Reserva categoriesFor: #verDestino!public! !
!Reserva categoriesFor: #verHoraReserva!public! !

!Reserva class methodsFor!

crearReservaCod: unCodigo hora: unaHora fecha: unaFecha dest: unDestino cliente: unCliente
"Retorna una instancia de reserva inicializada"
^ (self new) iniReservaCod: unCodigo hora: unaHora fecha: unaFecha dest: unDestino cliente: unCliente.! !
!Reserva class categoriesFor: #crearReservaCod:hora:fecha:dest:cliente:!public! !

