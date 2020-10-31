|remi c cl r a n d t dn co re ch col1|


c:= Chofer crearChoferNom: 'Pepe' dir: 'Calle necoche 7894' tel: '42558798' dni: '456789123' cod: 01 reg: 'profesional'.



cl:= Cliente crearClienteNom: 'Nico' dir: 'mi casa' tel: '42387458' dni: '78945217' cod: 01.


r:= Recepcionista crearRecepcionistaNom: 'maria' dir: 'su casa' tel: '47841257' dni: '789456123' cod: 01 hora: '8 12'.

a:=Agenda crearAgendaCod: 1.
r agregarAgenda: a. 

remi:= Remiseria crearRemiseriaNom: 'Paraiso' dir: 'calle 1234' unTel: '42558977' unaRep: r.


1 to: 3 do: [:i| n:= Prompter prompt: 'Ingrese el nombre del chofer: '.
			d:= Prompter prompt: 'Ingrese la direccion del chofer:'.
			t:= Prompter prompt: ' Ingrese el telefono del chofer: '.
			dn:= Prompter prompt:  ' Ingrese el DNI del chofer: '.
			co:= Prompter prompt: ' Ingrese el codigo del chofer: '.
			re:= Prompter prompt: ' Ingrese el tipo de registro del chofer: '.
			
			ch:= Chofer crearChoferNom: n dir: d tel: t dni: dn cod: co reg: re . 
			remi agregarChofer: ch ]. 

col1:=remi todosLosChoferes.
1 to: col1 size do: [:i| (col1 at: i) verNombre inspect ].
			