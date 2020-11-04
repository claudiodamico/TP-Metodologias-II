|r a remi aut c cl codCliente cliente fech hs des imp ch v |
r:= Recepcionista crearRecepcionistaNom: 'maria' dir: 'calle laprida 4857' tel: '47841257' dni: '789456123' cod: 01 hora: '8 a 12'.

a:=Agenda crearAgendaCod: 1.
r agregarAgenda: a. 

remi:= Remiseria crearRemiseriaNom: 'Paraiso' dir: 'calle 1234' unTel: '42558977' unaRep: r.

aut:= Auto crearAutoPatente: '236' col: 'blanco' mod: 'chevrolet corsa' cod: 06 .
c:= Chofer crearChoferNom: 'Mario' dir: 'Calle 14 7415' tel: '42457816' dni: '159753147' cod: 02 reg: 'profesional'.
c agregarAuto: aut .
remi agregarChofer: c.

cl:= Cliente crearClienteNom: 'Nico' dir: 'calle arrecifes 1587' tel: '42387458' dni: '78954127' cod: 01 .
remi agregarCliente: cl.
cl:= Cliente crearClienteNom: 'Enzo' dir: 'av. clachaqui 1500 ' tel: '42375429' dni: '7547857' cod: 02.
remi agregarCliente: cl.

cl:= Cliente crearClienteNom: 'Claudio' dir: 'calle neuquen 1987' tel: '42558710' dni: '78945217' cod: 03.
remi agregarCliente: cl. 

codCliente:= (Prompter prompt: ' Ingrese el codigo del cliente para el viaje: ') asNumber .
cliente:= remi buscarClienteCod: codCliente. 
cliente inspect.
"(cliente ~= nil ) ifTrue: [Transcript  show: 'esta en el sistema' ] ifFalse: [ Transcript  show: 'no esta en el sistema' ] ."

"(cliente ~= nil ) ifTrue: [ cod:=Prompter prompt: ' Ingrese el codigo del viaje'.
fech:= Prompter prompt: ' Ingrese la fecha del viaje: '.
hs:= Prompter prompt: ' Ingrese la hora del viaje: '.
des:= Prompter prompt: ' Ingrese el destino del viaje: '.
imp:= Prompter prompt: ' Ingrese el importe: '.
ch:= remi choferDisponible. 
v:= Viaje crearViajeCod: cod fecha: fech hora: hs destino: des import: imp cli: cliente cho: ch . 
Transcript show: ' se registro bien el viaje'  ] ifFalse: [ Transcript show: ' El cliente no esta registrado en el sistema'; cr ] ."

(cliente ~= nil ) ifTrue: [ cod:=Prompter prompt: ' Ingrese el codigo del viaje'.
fech:= Prompter prompt: ' Ingrese la fecha del viaje: '.
hs:= Prompter prompt: ' Ingrese la hora del viaje: '.
des:= Prompter prompt: ' Ingrese el destino del viaje: '.
imp:= Prompter prompt: ' Ingrese el importe: '.
ch:= remi choferDisponible. 
v:= Viaje crearViajeCod: cod fecha: fech hora: hs destino: des import: imp cli: cliente cho: ch . 
v inspect. 
Transcript show: ' se registro bien el viaje'  ] ifFalse: [ Transcript show: ' El cliente no esta registrado en el sistema'; cr .
MessageBox warning: 'El cliente no esta registrado en el sistema'.
registrarlo:= MessageBox confirm: '¿Desea ingresar un nuevo cliente?'. (registrarlo=true) ifTrue: [Transcript show: 'Ingrese un nuevo cliente'; cr.
			n:= Prompter prompt: 'Ingrese el nombre del cliente: '.
			d:= Prompter prompt: 'Ingrese la direccion del cliente:'.
			t:= Prompter prompt: ' Ingrese el telefono del cliente: '.
			dn:= Prompter prompt:  ' Ingrese el DNI del cliente: '.
			co:= Prompter prompt: ' Ingrese el codigo del cliente: '.

			cl:=Cliente  crearClienteNom: n dir: d tel: t dni: dn cod: co .
			cl inspect.
			remi agregarCliente: cl ] ] .







