"Filed out from Dolphin Smalltalk 7"!

Object subclass: #Viaje
	instanceVariableNames: 'codigo_viaje dia hora destino importe cliente chofer'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Viaje guid: (GUID fromString: '{E03F36D0-4DD3-4739-95B5-18145BE9533D}')!
Viaje comment: ''!
!Viaje categoriesForClass!Kernel-Objects! !
!Viaje methodsFor!

iniViajeCod: unCodigo dia: unaFecha hora: unaHora destino: unDestino import: unImporte cli: unCliente cho: unChofer
	"Inicializa una instancia de viaje"

	codigo_viaje := unCodigo.
	dia := unaFecha.
	hora := unaHora.
	destino := unDestino.
	importe := unImporte.
	cliente := unCliente.
	chofer := unChofer!

modiChofer: unChofer
"Modifica un chofer del viaje"
chofer:=unChofer. !

modiCliente: unCliente
"Modifica el cliente del viaje"
cliente:= unCliente. !

modiDestino: unDestino
"Modifica el destino del viaje"
destino:= unDestino.!

modiDia: unaFecha
	"Modifica la fecha del viaje"

	dia := unaFecha!

modiHora: unaHora
"Mofifica la hora del viaje"
hora:= unaHora.!

modiImporte: unImporte
"Modifica el importe de un viaje"
importe:=unImporte. !

verChofer
"Retorna el chofer del viaje"
^chofer. !

verCliente
"Retorna el cliente del viaje"
^cliente. !

verCodigo_viaje
"Retorna el codigo del viaje"
^codigo_viaje.!

verDestino
"Retorna el destino del viaje"
^destino. !

verDia
	"Retorna la fecha del viaje"

	^dia!

verHora
"Retorna la hora del viaje"
^hora. !

verImporte
"Retorna el importe del viaje"
^importe. ! !
!Viaje categoriesFor: #iniViajeCod:dia:hora:destino:import:cli:cho:!public! !
!Viaje categoriesFor: #modiChofer:!public! !
!Viaje categoriesFor: #modiCliente:!public! !
!Viaje categoriesFor: #modiDestino:!public! !
!Viaje categoriesFor: #modiDia:!public! !
!Viaje categoriesFor: #modiHora:!public! !
!Viaje categoriesFor: #modiImporte:!public! !
!Viaje categoriesFor: #verChofer!public! !
!Viaje categoriesFor: #verCliente!public! !
!Viaje categoriesFor: #verCodigo_viaje!public! !
!Viaje categoriesFor: #verDestino!public! !
!Viaje categoriesFor: #verDia!public! !
!Viaje categoriesFor: #verHora!public! !
!Viaje categoriesFor: #verImporte!public! !

!Viaje class methodsFor!

crearViajeCod: unCodigo dia: unaFecha hora: unaHora destino: unDestino import: unImporte cli:unCliente cho:unChofer
"Retorna una instancia de viaje inicializada"
^(self new) iniViajeCod:  unCodigo dia: unaFecha hora: unaHora destino: unDestino import: unImporte cli:unCliente cho:unChofer .! !
!Viaje class categoriesFor: #crearViajeCod:dia:hora:destino:import:cli:cho:!public! !

