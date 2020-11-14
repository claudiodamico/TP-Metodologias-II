"Filed out from Dolphin Smalltalk 7"!

Persona subclass: #Chofer
	instanceVariableNames: 'codigo disponible registro auto'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Chofer guid: (GUID fromString: '{76281269-866C-4DA9-98DC-C0BD467FD79B}')!
Chofer comment: ''!
!Chofer categoriesForClass!Kernel-Objects! !
!Chofer methodsFor!

agregarAuto: unAuto
"Agrega o modifica un auto al chofer"
auto:=unAuto.!

iniChoferNom: unNombre dir:unaDireccion tel: unTelefono dni: unDni cod:unCodigo reg:unRegistro
"Crea una instancia de chofer"
super iniPersonaNom: unNombre dir: unaDireccion tel: unTelefono dni: unDni.
codigo:=unCodigo.
registro:=unRegistro.
disponible:=true.
!

modiDisponibilidad
"Modifica el estado del chofer"
disponible:= disponible not.!

modiRegistro: unreg
"Modifica el registro del chofer"
registro:= unreg. !

verAuto
"Retorna auto"
^auto.!

verCodigo
"Retorna el codigo del chofer"
^codigo.!

verDisponibilidad
"Retorna true si el chofer esta disponible"
^disponible.!

verRegistro
"Retorna el registro del chofer"
^registro.! !
!Chofer categoriesFor: #agregarAuto:!public! !
!Chofer categoriesFor: #iniChoferNom:dir:tel:dni:cod:reg:!public! !
!Chofer categoriesFor: #modiDisponibilidad!public! !
!Chofer categoriesFor: #modiRegistro:!public! !
!Chofer categoriesFor: #verAuto!public! !
!Chofer categoriesFor: #verCodigo!public! !
!Chofer categoriesFor: #verDisponibilidad!public! !
!Chofer categoriesFor: #verRegistro!public! !

!Chofer class methodsFor!

crearChoferNom: unNombre dir:unaDireccion tel: unTelefono dni: unDni cod:unCodigo reg:unRegistro
"Retorna una instancia de chofer inicializada"
^(self new) iniChoferNom: unNombre dir:unaDireccion tel: unTelefono dni: unDni cod:unCodigo reg:unRegistro.! !
!Chofer class categoriesFor: #crearChoferNom:dir:tel:dni:cod:reg:!public! !

