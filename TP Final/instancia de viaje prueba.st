
r:= Recepcionista crearRecepcionistaNom: 'maria' dir: 'calle laprida 4857' tel: '47841257' dni: '789456123' cod: 01 hora: '8 a 12'.

a:=Agenda crearAgendaCod: 1.
r agregarAgenda: a. 

remi:= Remiseria crearRemiseriaNom: 'Paraiso' dir: 'calle 1234' unTel: '42558977' unaRep: r.

aut:= Auto crearAutoPatente: '236' col: 'blanco' mod: 'chevrolet corsa' cod: 06 .
c:= Chofer crearChoferNom: 'Mario' dir: 'Calle 14 7415' tel: '42457816' dni: '159753147' cod: 02 reg: 'profesional'.
c agregarAuto: aut .
remi agregarChofer: c.

cl:= Cliente crearClienteNom: 'Nico' dir: 'calle arrecifes 1587' tel: '42387458' dni: '78954127' cod: 01.
remi agregarCliente: cl.

codCliente:= (Prompter prompt: ' Ingrese el codigo del cliente para el viaje: ') asNumber .
cli:= remi buscarClienteCod: codCliente. 
cli inspect.
(cl~= nil)  ifTrue: [ cod:=Prompter prompt: ' Ingrese el codigo del viaje'.
fech:= Prompter prompt: ' Ingrese la fecha del viaje: '.
hs:= Prompter prompt: ' Ingrese la hora del viaje: '.
des:= Prompter prompt: ' Ingrese el destino del viaje: '.
imp:= Prompter prompt: ' Ingrese el importe: '.
ch:= remi choferDisponible. 
v:= Viaje crearViajeCod: cod fecha: fech hora: hs destino: des import: imp cli: cli cho: ch . 
Transcript show: ' se registro bien el viaje'   ]
ifFalse: [Transcript show: ' El cliente no esta registrado en el sistema'; cr ].




