|remi c cl r a|


c:= Chofer crearChoferNom: 'Pepe' dir: 'Calle necoche 7894' tel: '42558798' dni: '456789123' cod: 01 reg: 'profesional'.

(c verNombre) inspect.

cl:= Cliente crearClienteNom: 'Nico' dir: 'mi casa' tel: '42387458' dni: '78945217' cod: 01.
cl inspect.

r:= Recepcionista crearRecepcionistaNom: 'maria' dir: 'su casa' tel: '47841257' dni: '789456123' cod: 01 hora: '8 12'.

a:=Agenda crearAgendaCod: 1.
r agregarAgenda: a. 
r inspect.
remi:= Remiseria crearRemiseriaNom: 'Paraiso' dir: 'calle 1234' unTel: '42558977' unaRep: r.
remi inspect. 