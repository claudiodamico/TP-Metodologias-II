"Filed out from Dolphin Smalltalk 7"!

Persona subclass: #Recepcionista
	instanceVariableNames: 'horario_laboral codigo_recep agenda'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Recepcionista guid: (GUID fromString: '{CA762A3F-4C55-4415-8E4B-0C7C7C63AFC6}')!
Recepcionista comment: ''!
!Recepcionista categoriesForClass!Kernel-Objects! !
!Recepcionista methodsFor!

agregarAgenda: unaAgenda
"Agrega una agenda a recepcionista"
agenda:=unaAgenda.!

iniRecepcionistaNom: unNombre dir:unaDireccion tel: unTelefono dni: unDni cod:unCodigo hora:unaHorario
"Inicializa una instancia de recepcionista"
super iniPersonaNom: unNombre dir: unaDireccion tel: unTelefono dni: unDni.
codigo_recep:=unCodigo.
horario_laboral:=unaHorario.!

modiHorario: unHorario
"Modifica el horario laboral"
horario_laboral:=unHorario.!

verAgenda
"Retorna agenda"
^agenda.!

verCodigo_recep
"Retorna el codigo de la recepcionista"
^codigo_recep.!

verHorario
"Retorna el horario laboral de la recepcionista"
^horario_laboral.! !
!Recepcionista categoriesFor: #agregarAgenda:!public! !
!Recepcionista categoriesFor: #iniRecepcionistaNom:dir:tel:dni:cod:hora:!public! !
!Recepcionista categoriesFor: #modiHorario:!public! !
!Recepcionista categoriesFor: #verAgenda!public! !
!Recepcionista categoriesFor: #verCodigo_recep!public! !
!Recepcionista categoriesFor: #verHorario!public! !

!Recepcionista class methodsFor!

crearRecepcionistaNom: unNombre dir:unaDireccion tel: unTelefono dni: unDni cod:unCodigo hora:unaHorario
"Retorna una instancia de recepcionista inicializada"
^(self new) iniRecepcionistaNom: unNombre dir:unaDireccion tel: unTelefono dni: unDni cod:unCodigo hora:unaHorario.! !
!Recepcionista class categoriesFor: #crearRecepcionistaNom:dir:tel:dni:cod:hora:!public! !

