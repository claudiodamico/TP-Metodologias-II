| alq op n d t dn co re ch remi cl client col1 col2 buscarch resultado|

r:= Recepcionista crearRecepcionistaNom: 'maria' dir: 'calle laprida 4857' tel: '47841257' dni: '789456123' cod: 01 hora: '8 a 12'.

a:=Agenda crearAgendaCod: 1.
r agregarAgenda: a. 

remi:= Remiseria crearRemiseriaNom: 'Paraiso' dir: 'calle 1234' unTel: '42558977' unaRep: r.


Transcript clear;
show: ' Remiseria ';
show: remi verNombre printString;
show: ' Direccion: ' printString;
show: remi verDireccion  printString;
show: ' Telefono:  'printString;
show: remi verTelefono printString;
cr.

Transcript show: ' 1. Carga de Choferes';
cr;
show: ' 2. Carga de Clientes';
cr;
show: ' 3. Buscar choferes';
cr;
show: ' 4. Imprimir Choferes';
cr;
show: ' 5. Imprimir Clientes';
cr;
show: ' 6. Salir'; 
cr.


"alq:= Dictionary new.
alq at:  'lunes' put: 'varela' .
alq at: 'martes' put: 'quuilems'.
alq at: 'miercoles' put: 'avellaneda'.
alq at: 'jueves' put: 'berazategui'.
alq at: 'viernes' put:'berazategui';

yourself.

alq inspect"


op:= (Prompter prompt: ' Ingrese una opcion: ') asNumber.
[op ~=6] whileTrue: [ 
(op=1) ifTrue: [ 1 to: 1 do: [:i| 
			n:= Prompter prompt: 'Ingrese el nombre del chofer: '.
			d:= Prompter prompt: 'Ingrese la direccion del chofer:'.
			t:= Prompter prompt: ' Ingrese el telefono del chofer: '.
			dn:= Prompter prompt:  ' Ingrese el DNI del chofer: '.
			co:= Prompter prompt: ' Ingrese el codigo del chofer: '.
			re:= Prompter prompt: ' Ingrese el tipo de registro del chofer: '.
			
			ch:= Chofer crearChoferNom: n dir: d tel: t dni: dn cod: co reg: re . 
			remi agregarChofer: ch ]. ].

(op=2) ifTrue: [ 1 to: 1 do: [:i| n:= Prompter prompt: 'Ingrese el nombre del Cliente '.
			d:= Prompter prompt: 'Ingrese la direccion del cliente: '.
			t:= Prompter prompt: ' Ingrese el telefono del cliente '.
			dn:= Prompter prompt:  ' Ingrese el DNI del cliente '.
			co:= Prompter prompt: ' Ingrese el codigo del cliente: '.

			
			cl:= Cliente crearClienteNom: n dir: d tel: t dni: dn cod: co .
			remi agregarCliente: cl ]. ].

(op=3) ifTrue: [ 1 to: 1 do: [:i| 
resultado:=Prompter prompt: 'Ingrese  el codigo del chofer para buscarlo: '.
resultado:= remi buscarChoferCod:resultado.
  resultado inspect.].].
			
			

(op=4) ifTrue: [ col1:=remi todosLosChoferes.
1 to: col1 size do: [:i|Transcript show: (col1 at: i)  verNombre printString ;cr ]. 
1 to: col1 size do: [:i|Transcript show: (col1 at: i)  verTelefono printString ;cr ]. 
1 to: col1 size do: [:i|Transcript show: (col1 at: i)  verCodigo_auto printString ;cr ]. ].


(op=5) ifTrue: [ col2:=remi todosLosClientes .
1 to: col2 size do: [:i|Transcript show: (col2 at: i)  verNombre printString ;cr ]. 
1 to: col2 size do: [:i|Transcript show: (col2 at: i)  verTelefono printString ;cr ]. 
1 to: col2 size do: [:i|Transcript show: (col2 at: i)  verCodigoCliente printString ;cr ]. ].



op:= (Prompter prompt: ' Ingrese una opcion: ') asNumber	]. 

