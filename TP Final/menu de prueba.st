| op n d t dn co re ch remi col1 cl col2 aut c cliente|

r:= Recepcionista crearRecepcionistaNom: 'maria' dir: 'calle laprida 4857' tel: '47841257' dni: '789456123' cod: 01 hora: '8 a 12'.

a:=Agenda crearAgendaCod: 1.
r agregarAgenda: a. 

remi:= Remiseria crearRemiseriaNom: 'Paraiso' dir: 'calle 1234' unTel: '42558977' unaRep: r.

aut:= Auto crearAutoPatente: '123' col: 'rojo' mod: 'fiat siena' cod: 05 .
c:= Chofer crearChoferNom: 'Julio' dir: 'Calle necoche 7894' tel: '42558798' dni: '456789123' cod: 01 reg: 'profesional'.
c agregarAuto: aut.
c modiDisponibilidad. 
remi agregarChofer: c. 

aut:= Auto crearAutoPatente: '236' col: 'blanco' mod: 'chevrolet corsa' cod: 06 .
c:= Chofer crearChoferNom: 'Mario' dir: 'Calle 14 7415' tel: '42457816' dni: '159753147' cod: 02 reg: 'profesional'.
c agregarAuto: aut .
remi agregarChofer: c.

aut:= Auto crearAutoPatente: '789' col: 'negro' mod: 'renault logan' cod: 07 .
c:=Chofer crearChoferNom: 'Pedro' dir: 'Calle peron 1254' tel: '42578498' dni: '45458723' cod: 03 reg: 'comun'.
c agregarAuto: aut . 
remi agregarChofer: c. 


cl:= Cliente crearClienteNom: 'Nico' dir: 'calle arrecifes 1587' tel: '42387458' dni: '78954127' cod: 01.
remi agregarCliente: cl.

cl:= Cliente crearClienteNom: 'Enzo' dir: 'av. clachaqui 1500 ' tel: '42375429' dni: '7547857' cod: 02.
remi agregarCliente: cl.

cl:= Cliente crearClienteNom: 'Claudio' dir: 'calle neuquen 1987' tel: '42558710' dni: '78945217' cod: 03.
remi agregarCliente: cl. 

Transcript clear;
show: ' Remiseria ';
show: remi verNombre printString;
cr.

Transcript show: ' 1. Carga de choferes';
cr;
show: ' 2. Carga de clientes';
cr;
show: ' 3. Imprimir choferes'; 
cr;
show: ' 4. Imprimir clientes';
cr;
show: ' 5. Imprimir un chofer disponible';
cr;
show: ' 6. Cargar un viaje';
cr;
show: ' 7. Salir';
cr. 

op:= (Prompter prompt: ' Ingrese una opcion: ') asNumber.
[op ~=7] whileTrue: [ 
(op=1) ifTrue: [ n:= Prompter prompt: 'Ingrese el nombre del chofer: '.
			d:= Prompter prompt: 'Ingrese la direccion del chofer:'.
			t:= Prompter prompt: ' Ingrese el telefono del chofer: '.
			dn:= Prompter prompt:  ' Ingrese el DNI del chofer: '.
			co:= Prompter prompt: ' Ingrese el codigo del chofer: '.
			re:= Prompter prompt: ' Ingrese el tipo de registro del chofer: '.
			
			ch:= Chofer crearChoferNom: n dir: d tel: t dni: dn cod: co reg: re . 
			remi agregarChofer: ch ].
(op=2) ifTrue: [ n:= Prompter prompt: 'Ingrese el nombre del cliente: '.
			d:= Prompter prompt: 'Ingrese la direccion del cliente:'.
			t:= Prompter prompt: ' Ingrese el telefono del cliente: '.
			dn:= Prompter prompt:  ' Ingrese el DNI del cliente: '.
			co:= Prompter prompt: ' Ingrese el codigo del cliente: '.

			cl:=Cliente  crearClienteNom: n dir: d tel: t dni: dn cod: co .
			remi agregarCliente: cl ].

(op=3) ifTrue: [ Transcript show: ' Choferes cargados en el sistema: ';cr.
 col1:=remi todosLosChoferes.
1 to: col1 size do: [:i|Transcript show: (col1 at: i)  verNombre printString;cr ]. Transcript show: '----------------------------------------------------------------------------------';cr.].

(op=4) ifTrue: [ "col2:= remi todosLosClientes."
"1 to: col2 size do: [:i|Transcript show: (col2 at: i)  verNombre printString;cr ]. " 
Transcript show: ' Clientes  cargados en el sistema: ';cr.
col2:= remi todosLosClientes  collect: [:each | Transcript show: (each verNombre printString , each verCodigoCliente printString ); cr ]. 
Transcript show: '----------------------------------------------------------------------------------';cr. ].

(op=5) ifTrue: [ Transcript  show: 'Primer chofer disponoble encontrado: '; cr;
 show: remi choferDisponible verNombre printString ; cr.]. 

(op=6) ifTrue: [ codCliente:= (Prompter prompt: ' Ingrese el codigo del cliente para el viaje: ') asNumber .
cliente:= remi buscarClienteCod: codCliente. 
(cliente ~= nil ) ifTrue: [ cod:=Prompter prompt: ' Ingrese el codigo del viaje'.
fech:= Prompter prompt: ' Ingrese la fecha del viaje: '.
hs:= Prompter prompt: ' Ingrese la hora del viaje: '.
des:= Prompter prompt: ' Ingrese el destino del viaje: '.
imp:= Prompter prompt: ' Ingrese el importe: '.
ch:= remi choferDisponible. 
v:= Viaje crearViajeCod: cod fecha: fech hora: hs destino: des import: imp cli: cliente cho: ch . 
Transcript show: ' se registro bien el viaje'  ] ifFalse: [ Transcript show: ' El cliente no esta registrado en el sistema'; cr .
MessageBox warning: 'El cliente no esta registrado en el sistema'.
registrarlo:= MessageBox confirm: '¿Desea ingresar un nuevo cliente?'. (registrarlo=true) ifTrue: [Transcript show: 'Ingrese un nuevo cliente'; cr.
			n:= Prompter prompt: 'Ingrese el nombre del cliente: '.
			d:= Prompter prompt: 'Ingrese la direccion del cliente:'.
			t:= Prompter prompt: ' Ingrese el telefono del cliente: '.
			dn:= Prompter prompt:  ' Ingrese el DNI del cliente: '.
			co:= Prompter prompt: ' Ingrese el codigo del cliente: '.

			cl:=Cliente  crearClienteNom: n dir: d tel: t dni: dn cod: co .
			remi agregarCliente: cl ] ] .
] .
op:= (Prompter prompt: ' Ingrese una opcion: ') asNumber	]. 

