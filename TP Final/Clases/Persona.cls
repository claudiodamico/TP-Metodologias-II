"Filed out from Dolphin Smalltalk 7"!

Object subclass: #Persona
	instanceVariableNames: 'nombre direccion telefono dni'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Persona guid: (GUID fromString: '{C6AE47F5-B04D-4702-99B2-8586C4DCD592}')!
Persona comment: ''!
!Persona categoriesForClass!Kernel-Objects! !
!Persona methodsFor!

iniPersonaNom: unNombre dir:unaDireccion tel: unTelefono dni: unDni
"Inicializa una instancia de persona, sus clases hijos llamaran este metodo"
nombre:=unNombre.
direccion:=unaDireccion.
telefono:=unTelefono.
dni:=unDni.!

modiDireccion: unaDir
"Modifica la direccion de una persona"
direccion:=unaDir.!

modiNombre: unNom
"Modifica el nombre de una persona"
nombre:=unNom.!

modiTelefono: unTel
"Modifica el telefono"
telefono:=unTel.!

verDireccion
"Retorna la direccion de una persona"
^direccion.!

verDni
"Retorna el dni de una persona"
^dni.!

verNombre
"Retorna el nombre de la persona"
^nombre.!

verTelefono
"Retorna el telefono de una persona"
^telefono.! !
!Persona categoriesFor: #iniPersonaNom:dir:tel:dni:!public! !
!Persona categoriesFor: #modiDireccion:!public! !
!Persona categoriesFor: #modiNombre:!public! !
!Persona categoriesFor: #modiTelefono:!public! !
!Persona categoriesFor: #verDireccion!public! !
!Persona categoriesFor: #verDni!public! !
!Persona categoriesFor: #verNombre!public! !
!Persona categoriesFor: #verTelefono!public! !

