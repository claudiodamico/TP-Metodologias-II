|remi c cl r a n d t dn co re ch col1 aut|

aut:= Auto crearAutoPatente: '123' col: 'rojo' mod: 'fiat siena' cod: 05 .
aut1:= Auto crearAutoPatente: '236' col: 'blanco' mod: 'chevrolet corsa' cod: 06 .
aut2:= Auto crearAutoPatente: '789' col: 'negro' mod: 'renault logan' cod: 07 .
c:= Chofer crearChoferNom: 'Julio' dir: 'Calle necoche 7894' tel: '42558798' dni: '456789123' cod: 01 reg: 'profesional'.
c agregarAuto: aut.
c1:= Chofer crearChoferNom: 'Mario' dir: 'Calle 14 7415' tel: '42457816' dni: '159753147' cod: 02 reg: 'profesional'.
c1 agregarAuto: aut1 .
c2:=Chofer crearChoferNom: 'Pedro' dir: 'Calle peron 1254' tel: '42578498' dni: '45458723' cod: 03 reg: 'comun'.
c2 agregarAuto: aut2 . 

r:= Recepcionista crearRecepcionistaNom: 'maria' dir: 'calle laprida 4857' tel: '47841257' dni: '789456123' cod: 01 hora: '8 a 12'.

a:=Agenda crearAgendaCod: 1.
r agregarAgenda: a. 

remi:= Remiseria crearRemiseriaNom: 'Paraiso' dir: 'calle 1234' unTel: '42558977' unaRep: r.
remi agregarChofer: c. 
remi agregarChofer: c1.
remi agregarChofer: c2. 


cl:= Cliente crearClienteNom: 'Nico' dir: 'calle arrecifes 1587' tel: '42387458' dni: '78954127' cod: 01.
cl1:= Cliente crearClienteNom: 'Enzo' dir: 'av. clachaqui 1500 ' tel: '42375429' dni: '7547857' cod: 02.
cl2:= Cliente crearClienteNom: 'Claudio' dir: 'calle neuquen 1987' tel: '42558710' dni: '78945217' cod: 03.
remi agregarCliente: cl.
remi agregarCliente: cl1.
remi agregarCliente: cl2. 

remi inspect.

"1 to: 3 do: [:i| n:= Prompter prompt: 'Ingrese el nombre del chofer: '.
			d:= Prompter prompt: 'Ingrese la direccion del chofer:'.
			t:= Prompter prompt: ' Ingrese el telefono del chofer: '.
			dn:= Prompter prompt:  ' Ingrese el DNI del chofer: '.
			co:= Prompter prompt: ' Ingrese el codigo del chofer: '.
			re:= Prompter prompt: ' Ingrese el tipo de registro del chofer: '.
			
			ch:= Chofer crearChoferNom: n dir: d tel: t dni: dn cod: co reg: re . 
			remi agregarChofer: ch ]. "

"1 to: 3 do: [:i| n:= Prompter prompt: 'Ingrese el nombre del cliente: '.
			d:= Prompter prompt: 'Ingrese la direccion del cliente:'.
			t:= Prompter prompt: ' Ingrese el telefono del cliente: '.
			dn:= Prompter prompt:  ' Ingrese el DNI del cliente: '.
			co:= Prompter prompt: ' Ingrese el codigo del cliente: '.
			
			cl:= Cliente crearClienteNom: n dir: d tel: t dni: dn cod: co .
			remi agregarCliente: cl ]. "

col1:=remi todosLosChoferes.
1 to: col1 size do: [:i| (col1 at: i) verNombre inspect ].
			