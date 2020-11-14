"Filed out from Dolphin Smalltalk 7"!

Object subclass: #Auto
	instanceVariableNames: 'patente color modelo codigo_auto'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Auto guid: (GUID fromString: '{18D22FD2-058F-493F-8753-033253D5886D}')!
Auto comment: ''!
!Auto categoriesForClass!Kernel-Objects! !
!Auto methodsFor!

iniAutoPatente: unaPatente col:unColor mod:unModelo cod:unCodigo
"Inicializa una instancia de auto"
patente:=unaPatente.
color:=unColor.
modelo:=unModelo.
codigo_auto:=unCodigo.!

modiColor: unColor
"Modifica el color del auto en caso de que sea pintado"
color:=unColor.!

verCodigo_auto
"Retorna el codigo del auto"
^codigo_auto.!

verColor
"Retorna el color del auto"
^color.!

verModelo
"Retorna el modelo del auto"
^modelo.!

verPatente
"Retorna la patente del auto"
^patente.! !
!Auto categoriesFor: #iniAutoPatente:col:mod:cod:!public! !
!Auto categoriesFor: #modiColor:!public! !
!Auto categoriesFor: #verCodigo_auto!public! !
!Auto categoriesFor: #verColor!public! !
!Auto categoriesFor: #verModelo!public! !
!Auto categoriesFor: #verPatente!public! !

!Auto class methodsFor!

crearAutoPatente: unaPatente col:unColor mod:unModelo cod:unCodigo
"Retorna una instancia de auto inicializada"
^(self new) iniAutoPatente: unaPatente col:unColor mod:unModelo cod:unCodigo.! !
!Auto class categoriesFor: #crearAutoPatente:col:mod:cod:!public! !

