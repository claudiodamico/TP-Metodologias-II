| op n d t dn co re ch remi col1|

r:= Recepcionista crearRecepcionistaNom: 'maria' dir: 'calle laprida 4857' tel: '47841257' dni: '789456123' cod: 01 hora: '8 a 12'.

a:=Agenda crearAgendaCod: 1.
r agregarAgenda: a. 

remi:= Remiseria crearRemiseriaNom: 'Paraiso' dir: 'calle 1234' unTel: '42558977' unaRep: r.


Transcript clear;
show: ' Remiseria ';
show: remi verNombre printString;
cr.

Transcript show: ' 1. Carga de datos';
cr;
show: ' 2. Imprimir choferes';
cr;
show: ' 3. Salir'; 
cr.

op:= (Prompter prompt: ' Ingrese una opcion: ') asNumber.
[op ~=3] whileTrue: [ 
(op=1) ifTrue: [ 1 to: 2 do: [:i| n:= Prompter prompt: 'Ingrese el nombre del chofer: '.
			d:= Prompter prompt: 'Ingrese la direccion del chofer:'.
			t:= Prompter prompt: ' Ingrese el telefono del chofer: '.
			dn:= Prompter prompt:  ' Ingrese el DNI del chofer: '.
			co:= Prompter prompt: ' Ingrese el codigo del chofer: '.
			re:= Prompter prompt: ' Ingrese el tipo de registro del chofer: '.
			
			ch:= Chofer crearChoferNom: n dir: d tel: t dni: dn cod: co reg: re . 
			remi agregarChofer: ch ]. ].
(op=2) ifTrue: [ col1:=remi todosLosChoferes.
1 to: col1 size do: [:i|Transcript show: (col1 at: i)  verNombre printString;cr ]. ].
op:= (Prompter prompt: ' Ingrese una opcion: ') asNumber	]. 

