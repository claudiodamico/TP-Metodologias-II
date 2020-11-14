"Filed out from Dolphin Smalltalk 7"!

Persona subclass: #Cliente
	instanceVariableNames: 'codigo_cliente'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Cliente guid: (GUID fromString: '{71C341BF-6F5E-4E57-865F-0B2A4740A73A}')!
Cliente comment: ''!
!Cliente categoriesForClass!Kernel-Objects! !
!Cliente methodsFor!

iniClienteNom: unNombre dir:unaDireccion tel: unTelefono dni: unDni cod:unCodigo
"Inicializa una instancia de cliente"
super iniPersonaNom: unNombre dir: unaDireccion tel: unTelefono dni: unDni.
codigo_cliente:=unCodigo.!

verCodigoCliente
"Retorna el codigo del cliente"
^codigo_cliente.! !
!Cliente categoriesFor: #iniClienteNom:dir:tel:dni:cod:!public! !
!Cliente categoriesFor: #verCodigoCliente!public! !

!Cliente class methodsFor!

crearClienteNom: unNombre dir:unaDireccion tel: unTelefono dni: unDni cod:unCodigo
"Retorna una instancia inicializada de cliente"
^(self new) iniClienteNom: unNombre dir:unaDireccion tel: unTelefono dni: unDni cod:unCodigo.! !
!Cliente class categoriesFor: #crearClienteNom:dir:tel:dni:cod:!public! !

