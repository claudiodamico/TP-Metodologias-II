|remi aut c cl r a |
r:= Recepcionista crearRecepcionistaNom: 'maria' dir: 'calle laprida 4857' tel: '47841257' dni: '789456123' cod: 01 hora: '8 a 12'.

a:=Agenda crearAgendaCod: 1.
r agregarAgenda: a. 

remi:= Remiseria crearRemiseriaNom: 'Paraiso' dir: 'calle 1234' unTel: '42558977' unaRep: r.

aut:= Auto crearAutoPatente: '123' col: 'rojo' mod: 'fiat siena' cod: 05 .
c:= Chofer crearChoferNom: 'Julio' dir: 'Calle necoche 7894' tel: '42558798' dni: '456789123' cod: 01 reg: 'profesional'.
c agregarAuto: aut.
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


remi inspect.