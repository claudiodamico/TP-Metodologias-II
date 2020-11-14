"Filed out from Dolphin Smalltalk 7"!

Object subclass: #Agenda
	instanceVariableNames: 'codigo_agenda lista_viajes lista_reservas'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Agenda guid: (GUID fromString: '{67691D7D-7512-464E-848C-93743BF88BFF}')!
Agenda comment: ''!
!Agenda categoriesForClass!Kernel-Objects! !
!Agenda methodsFor!

agregarReserva: unaReserva
"Agrega una reserva a la agenda"
lista_reservas add: unaReserva.!

agregarViaje: unViaje
	"Agrega un viaje a la agenda"

	lista_viajes add: unViaje!

cantidadViajesXdia

|cantViajesXdia noRepetidos diccionario |

cantViajesXdia:= OrderedCollection new.
lista_viajes do: [:via | cantViajesXdia add: via verDia ] . "Guardo los dias de cada viaje"
noRepetidos:= cantViajesXdia asSet. "Creo una coleccion que no repita los dias"
diccionario:= Dictionary new. "Creo un dicionario" 
noRepetidos do: [:dia | diccionario at: dia put: (cantViajesXdia occurrencesOf: dia) ]. 

diccionario inspect.!

eliminarReserva: unaReserva
"Elimina una reserva de la agenda"
lista_reservas remove: unaReserva.!

eliminarViaje: unViaje
	"Elimina un viaje de la agenda"

	lista_viajes remove: unViaje!

existeReserva: unaReserva
"Retorna true si la reserva esta en la agenda, false en caso contrario"
^lista_reservas includes: unaReserva.!

existeViaje: unViaje
	"Retorna true si el viaje esta en la agenda, false en caso contrario"

	^lista_viajes includes: unViaje!

iniAgendaCod: unCodigo
	"Inicializa una instancia de agenda"

	codigo_agenda := unCodigo.
	lista_viajes := OrderedCollection new.
	lista_reservas := OrderedCollection new.
!

seleccionarViajesACapital

|col |
col:= lista_viajes select: [:via| via verDestino =  'capital' ]. 
^ col. !

verCodigo_agenda
"Retorna el codigo de la agenda"
^codigo_agenda.! !
!Agenda categoriesFor: #agregarReserva:!public! !
!Agenda categoriesFor: #agregarViaje:!public! !
!Agenda categoriesFor: #cantidadViajesXdia!public! !
!Agenda categoriesFor: #eliminarReserva:!public! !
!Agenda categoriesFor: #eliminarViaje:!public! !
!Agenda categoriesFor: #existeReserva:!public! !
!Agenda categoriesFor: #existeViaje:!public! !
!Agenda categoriesFor: #iniAgendaCod:!public! !
!Agenda categoriesFor: #seleccionarViajesACapital!public! !
!Agenda categoriesFor: #verCodigo_agenda!public! !

!Agenda class methodsFor!

crearAgendaCod: unCodigo
"Retorna una instancia de agenda inicializada"
^(self new) iniAgendaCod: unCodigo.! !
!Agenda class categoriesFor: #crearAgendaCod:!public! !

