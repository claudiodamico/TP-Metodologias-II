"Filed out from Dolphin Smalltalk 7"!

Object subclass: #Remiseria
	instanceVariableNames: 'nombre direccion telefono lista_chofer lista_clientes recepcionista'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Remiseria guid: (GUID fromString: '{8BA576A0-A272-492A-BB0D-3B4AA0BC7775}')!
Remiseria comment: ''!
!Remiseria categoriesForClass!Kernel-Objects! !
!Remiseria methodsFor!

agregarChofer: unChofer
"Agrega un chofer a la remiseria"
lista_chofer add: unChofer.!

agregarCliente: unCliente
"Agrega un cliente a la remiseria"
lista_clientes add: unCliente.!

buscarClienteCod: unCod
"Busca el cliente con el codigo asociado"
"1 to: lista_clientes size do: [:i| (self existeCliente: (lista_clientes at: i)) ifTrue: [((lista_clientes  at: i) verCodigoCliente  = unCod )ifTrue: [^(lista_clientes  at: i)]
																							ifFalse: [ ^nil ]	] ]. "

|cli | 
"Metodo para buscar un chofer disponible para asignar a un viaje"
cli:=(self todosLosClientes ) detect: [:each |  each verCodigoCliente = unCod ] ifNone: [^nil] .
^cli. 
 !

choferDisponible
|cho | 
"Metodo para buscar un chofer disponible para asignar a un viaje"
^(cho:=(self todosLosChoferes) detect: [:each |  each verDisponibilidad = true ] ifNone:[^nil ]).
!

choferesEnViaje
" Retorna en una lista los choferes que estan ocupados en viaje; con disponibilidad=false.  "
|col |
col:= lista_chofer reject: [:ch | ch verDisponibilidad = true ]. 
^ col. !

eliminarChofer: unChofer
"Elimina un chofer de la remiseria"
lista_chofer remove: unChofer.!

eliminarCliente: unCliente
"Elimina un cliente de la remiseria"
lista_clientes remove: unCliente.!

existeChofer: unChofer
"Retorna true si el chofer existe en el remiseria, retorna false en caso contrario"
^lista_chofer includes: unChofer.!

existeCliente: unCliente
"Retorna true si existe el cliente en la remiseria, false en caso contrario"
^lista_clientes includes: unCliente.!

iniRemiseriaNom: unNombre dir:unaDireccion unTel: unTelefono unaRep: unaRecepcionista
"Inicializa una instancia de Remiseria"
nombre:= unNombre.
direccion:=unaDireccion.
telefono:=unTelefono.
recepcionista:=unaRecepcionista. 
lista_chofer:= OrderedCollection new.
lista_clientes:= OrderedCollection new.!

modiDireccion: unaDir
"Modifica la direccion de la remiseria"
direccion:=unaDir.!

modiNombre: unNom
"Modifica el nombre de la remiseria"
nombre:=unNom.!

modiTelefono: unTel
"Modifica el telefono de la remiseria"
telefono:=unTel. !

todosLosChoferes
"Retorna la lista de los choferes"
^lista_chofer.!

todosLosClientes
"Retorna la lista de clientes"
^lista_clientes.!

verDireccion
"Retorna la direccion de la remiseria"
^direccion.!

verNombre
"Retorna el nombre de la Remiseria"
^ nombre.!

verRecepcionista
"Retorna a la recepcionista de la remiseria"
^recepcionista.  "A futuro ver que este metodo llame a verNombre de la clase recepcionista"!

verTelefono
"Retorna el telefono de la remiseria"
^telefono.! !
!Remiseria categoriesFor: #agregarChofer:!public! !
!Remiseria categoriesFor: #agregarCliente:!public! !
!Remiseria categoriesFor: #buscarClienteCod:!public! !
!Remiseria categoriesFor: #choferDisponible!public! !
!Remiseria categoriesFor: #choferesEnViaje!public! !
!Remiseria categoriesFor: #eliminarChofer:!public! !
!Remiseria categoriesFor: #eliminarCliente:!public! !
!Remiseria categoriesFor: #existeChofer:!public! !
!Remiseria categoriesFor: #existeCliente:!public! !
!Remiseria categoriesFor: #iniRemiseriaNom:dir:unTel:unaRep:!public! !
!Remiseria categoriesFor: #modiDireccion:!public! !
!Remiseria categoriesFor: #modiNombre:!public! !
!Remiseria categoriesFor: #modiTelefono:!public! !
!Remiseria categoriesFor: #todosLosChoferes!public! !
!Remiseria categoriesFor: #todosLosClientes!public! !
!Remiseria categoriesFor: #verDireccion!public! !
!Remiseria categoriesFor: #verNombre!public! !
!Remiseria categoriesFor: #verRecepcionista!public! !
!Remiseria categoriesFor: #verTelefono!public! !

!Remiseria class methodsFor!

crearRemiseriaNom: unNombre dir:unaDireccion unTel: unTelefono unaRep: unaRecepcionista
"Retorna una instancia de remiseria inicializada"
^(self new) iniRemiseriaNom: unNombre dir:unaDireccion unTel: unTelefono unaRep: unaRecepcionista.! !
!Remiseria class categoriesFor: #crearRemiseriaNom:dir:unTel:unaRep:!public! !

