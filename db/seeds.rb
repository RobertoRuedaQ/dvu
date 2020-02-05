# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Type.create!
([
  { type_name:"Asesoría", type_code: "1"},
  { type_name:"Asistencia Técnica", type_code: "2"},
  { type_name:"Coloquio", type_code: "3"},
  { type_name:"Conferencia", type_code: "4"},
  { type_name:"Congreso", type_code: "5"},
  { type_name:"Consultoría", type_code: "6"},
  { type_name:"Curso libre", type_code: "7"},
  { type_name:"Diplomado", type_code: "8"},
  { type_name:"Foro", type_code: "9"},
  { type_name:"Interventoría", type_code: "10"},
  { type_name:"Mesa redonda", type_code: "11"},
  { type_name:"Seminario", type_code: "12"},
  { type_name:"Simposio", type_code: "13"},
  { type_name:"Taller", type_code: "14"},
  { type_name:"Presentación Artística", type_code: "15"},
  { type_name:"Exposición Artística", type_code: "16"},
  { type_name:"Acto Cultural", type_code: "17"},
  { type_name:"Reunión", type_code: "18"},
  { type_name:"Acción Social", type_code: "19"},
  { type_name:"Ensayo", type_code: "20"},
  { type_name:"Intervención", type_code: "21"}
])

Area.create!([
  {area_name: "Pastoral", area_code:"PA"},
  {area_name:"Proyección Social", area_code:"PS"},
  {area_name:"Liderazgo y Participación", area_code: "LP"},
  {area_name:"Cultura y Expresión Estética", area_code: "CE"}
])

Action.create!([
  {action_name: "Formación", action_code: "F"},
  {action_name: "Experiencia", action_code: "E"},
  {action_name: "gestión", action_code: "G"},
])

Program.create!([
  {program_name:"Sensibilización", program_code: "1"},
  {program_name:"Participación", program_code: "2"},
  {program_name:"Formación", program_code: "3"},
  {program_name:"Expresión", program_code: "4"},
  {program_name:"Proyección", program_code: "5"}
])

Campu.create!(
  [
    {campus_name: "Chapinero", campus_code:"CHA"},
    {campus_name:"campus:"Candelaria",", campus_name:"CAN"},
    {campus_name: "Norte", campus_code:"NOR"},
    {campus_name: "Utopía", campus_code: "UTO"}
  ]
)

Budget.create!(
  [
    {item: "Muebles y enseres", account: "15110103", source:"541", department: "4019", amount:3_999_600 },
    {item: "Elementos de Bienestar/instrumentos musicales", account: "15130102", source:"541", department: "4019", amount:5_225_024 },
    {item: "Honorarios", account: "51020101", source:"541", department: "4019", amount:5_000_000 },
    {item: "Honorarios docentes invitados", account: "51020102", source:"541", department: "4019", amount:4_000_000 },
    {item: "Honorarios capacitaciones", account: "51020103", source:"541", department: "4019", amount:4_000_000 },
    {item: "Transporte, fletes y acarreos", account: "51071001", source:"541", department: "4019", amount:2_000_000 },
    {item: "Mantenimientos de equipos de oficina", account: "51090104", source:"541", department: "4019", amount:2_000_000 },
    {item: "Mantenimientos y reparaciones", account: "51090106", source:"541", department: "4019", amount:6_000_000 },
    {item: "Insumos de mantenimientos", account: "51090110", source:"541", department: "4019", amount:4_543_699 },
    {item: "Pasajes aéreos", account: "51110102", source:"541", department: "4019", amount:4_800_000 },
    {item: "Pasajes terrestres", account: "15110103", source:"541", department: "4019", amount:2_844_000 },
    {item: "Atenciones y refrigerios", account: "51140102", source:"541", department: "4019", amount:13_751_783 },
    {item: "Auxilio funerario", account: "51140104", source:"541", department: "4019", amount:1_000_000 },
    {item: "Auxilio a estudiantes", account: "51140105", source:"541", department: "4019", amount:10_000_000 },
    {item: "Combustibles y lubricantes", account: "51140107", source:"541", department: "4019", amount:1_000_000 },
    {item: "Conmemoraciones", account: "51140110", source:"541", department: "4019", amount:6_000_000 },
    {item: "Dotación para alojamiento y cocina", account: "51140114", source:"541", department: "4019", amount:1_000_000 },
    {item: "Elementos de aseo y cafetería", account: "51140115", source:"541", department: "4019", amount:1_000_000 },
    {item: "Fotocopias", account: "51140116", source:"541", department: "4019", amount:200_000 },
    {item: "Implementos culturales y deportivos", account: "51140118", source:"541", department: "4019", amount:15_000_000 },
    {item: "Insumos litúrgicos", account: "51140123", source:"541", department: "4019", amount:3_000_000 },
    {item: "Papelería y útiles de escritorio", account: "51140127", source:"541", department: "4019", amount:12_000_000 },
    {item: "Parqueaderos", account: "51140128", source:"541", department: "4019", amount:500_000 },
    {item: "Participación de eventos", account: "51140129", source:"541", department: "4019", amount:5_000_000 },
    {item: "Peajes", account: "51140130", source:"541", department: "4019", amount:800_000 },
    {item: "Premios y concursos", account: "51140131", source:"541", department: "4019", amount:6_000_000 },
    {item: "Publicidad y propaganda", account: "51140133", source:"541", department: "4019", amount:1_000_000 },
    {item: "Transporte urbano", account: "51140137", source:"541", department: "4019", amount:10_000_000 },
    {item: "Elementos publicitarios", account: "51140145", source:"541", department: "4019", amount:5_000_000 }
  ]
)

Place.create!(place_name:"AUDITORIO ROJO EDIFICIO JUAN VARGAS", campus_id: 1 , capacity: 128)
Place.create!(place_name:"AUDITORIO AZUL EDIFICIO JUAN VARGAS", campus_id: 1 ,capacity: 128)
Place.create!(place_name:"AUDITORIO HOUSTON edif. Justo Ramón", campus_id: 1 ,capacity: 168)
Place.create!(place_name:"AUDITORIO BAUSCH & LOMB", campus_id: 1 ,capacity: 80)
Place.create!(place_name:"AUDITORIO BICENTENARIO 1", campus_id: 1 ,capacity: 30)
Place.create!(place_name:"AUDITORIO BICENTENARIO 2", campus_id: 1 , capacity: 60)
Place.create!(place_name:"TEATRO", campus_id: 1 , capacity: 936)
Place.create!(place_name:"SALA DE EXPOSICIONES A", campus_id: 1 ,capacity: 66)
Place.create!(place_name:"SALA DE EXPOSICIONES B", campus_id: 1 ,capacity: 70)
Place.create!(place_name:"SALÓN SOCIAL", campus_id: 1 ,capacity: 120)
Place.create!(place_name:"AULA MULTIPLE" , campus_id: 1 ,capacity: 96)
Place.create!(place_name:"AUDITORIO CINCUENTENARIO", campus_id: 1 ,capacity: 178)
Place.create!(place_name:"AUDITORIO HNO. MARTIN CARLOS", campus_id: 1 , capacity: 105)
Place.create!(place_name:"COMEDOR CONSEJO ACADÉMICO FUNDADORES", campus_id: 1 , capacity: 24)
Place.create!(place_name:"SALA DE JUNTAS 1 FUNDADORES", campus_id: 1 , capacity: 16)
Place.create!(place_name:"SALA DE JUNTAS 2 FUNDADORES", campus_id: 1 , capacity: 24)
Place.create!(place_name:"SALA DE SUSTENTACIÓN 5", campus_id: 1 ,capacity: 16)
Place.create!(place_name:"SALONES DE CLASE", campus_id: 1 ,capacity: 40)
Place.create!(place_name:"IGLESIA NUESTRA SEÑORA DE LA ESTRELLA", campus_id: 1 , capacity: 400)
Place.create!(place_name:"TEATRINO", campus_id: 1 , capacity: 200)
Place.create!(place_name:"PARQUEADERO" , campus_id: 1 , capacity: 480)
Place.create!(place_name:"SALA DE MÚSICA", campus_id: 1 , capacity: 120)
Place.create!(place_name:"SALÓN DE LOS ESPEJOS", campus_id: 1 , capacity: 28)
Place.create!(place_name:"AUDITORIO HNO. DANIEL	BLOQUE E- PISO 1°", capacity:160, campus_id:2)
Place.create!(place_name:"SALA DE CONFERENCIAS	BLOQUE B- PISO 2°", capacity:186, campus_id:2)
Place.create!(place_name:"SALA DE SUSTENTACIÓN 1	BLOQUE D - PISO 5°", capacity:16, campus_id:2)
Place.create!(place_name:"SALA DE SUSTENTACIÓN 2	BLOQUE D - PISO 5°", capacity:15, campus_id:2)
Place.create!(place_name:"AUDITORIO ENRIQUE LOW MURTRA	BLOQUE A- PISO 2°",capacity:24, campus_id:2)
Place.create!(place_name:"TEATRO",capacity:2000, campus_id:2)
Place.create!(place_name:"SALA DE RECEPCIONES	BLOQUE F - PISO 2°", capacity:500, campus_id:2)
Place.create!(place_name:"AUDITORIO  NIVEL 0	BLOQUE A- NIVEL 0", capacity:	48, campus_id:2)
Place.create!(place_name:"PLAZOLETA", capacity:	17, campus_id:2)
Place.create!(place_name:"IGLESIA DE LA SANTA CRUZ", capacity:498, campus_id:2)

Place.create!(place_name:"TEATRO", capacity:506, campus_id:3)
Place.create!(place_name:"SALÓN HNO. JUAN VARGAS (Salón 331)", capacity:506, campus_id:3)
Place.create!(place_name:"HNO. FAUSTO SALVADOR (Salón 330)", capacity:506, campus_id:3)
Place.create!(place_name:"TORREON", capacity:506, campus_id:3)
Place.create!(place_name:"SALA DE JUNTAS", capacity:506, campus_id:3)
Place.create!(place_name:"AUDITORIO SAN BENILDO", capacity:506, campus_id:3)
Place.create!(place_name:"IGLESIA INMACULADA CONCEPCIÓN", capacity:506, campus_id:3)

Subprogram.create!([
{subprogram_name:"Espiritual", subprogram_code:"2", program_id:1},
{subprogram_name:"Social", subprogram_code:"3", program_id:1},
{subprogram_name:"Comunidades", subprogram_code:"1", program_id:2},
{subprogram_name:"Representación", subprogram_code:"2", program_id:2},
{subprogram_name:"Centros de interés", subprogram_code:"3", program_id:2},
{subprogram_name:"Liderazgo", subprogram_code:"1", program_id:3},
{subprogram_name:"Ciudadanía", subprogram_code:"2", program_id:3},
{subprogram_name:"Pastoral", subprogram_code:"3", program_id:3},
{subprogram_name:"Catequesis", subprogram_code:"4", program_id:3},
{subprogram_name:"Proyección Social", subprogram_code:"5", program_id:3},
{subprogram_name:"Música", subprogram_code:"6", program_id:3},
{subprogram_name:"Teatro", subprogram_code:"7", program_id:3},
{subprogram_name:"Danza", subprogram_code:"8", program_id:3},
{subprogram_name:"Arte Plástico", subprogram_code:"9", program_id:3},
{subprogram_name:"Artes y Diseño", subprogram_code:"10", program_id:3},
{subprogram_name:"Clúster DHIS", subprogram_code:"11", program_id:3},
{subprogram_name:"Presentación Artística", subprogram_code:"1", program_id:4},
{subprogram_name:"Festival", subprogram_code:"2", program_id:4},
{subprogram_name:"Intervención", subprogram_code:"3", program_id:4},
{subprogram_name:"Acciones Sociales", subprogram_code:"1", program_id:5},
{subprogram_name:"Voluntariado", subprogram_code:"2", program_id:5},
{subprogram_name:"Misiones", subprogram_code:"3", program_id:5}
  ])

Subject.create!(code:"DH103",	title:"ARTE CONTEMPORÁNEO EN JAPÓN", day:"Martes",	short:"Acj", 	hour:"1114",	campus:"CHAPINERO",	classroom:"103F", teacher:"KUMAGAI TAKAAKI",faculty:"FACULTAD DE FILOSOFÍA Y HUMANIDADES", credits: "3")
Subject.create!(code:"DH103",	title:"ARTE CONTEMPORÁNEO EN JAPÓN", day:"Martes",	short:"Acj", 	hour:"1114",	campus:"CHAPINERO",	classroom:"103F", teacher:"KUMAGAI TAKAAKI",faculty:"FACULTAD DE FILOSOFÍA Y HUMANIDADES", credits: "3")
Subject.create!(code:"DH103",	title:"ARTE CONTEMPORÁNEO EN JAPÓN", day:"Martes",	short:"Acj", 	hour:"1114",	campus:"CHAPINERO",	classroom:"103F", teacher:"KUMAGAI TAKAAKI",faculty:"FACULTAD DE FILOSOFÍA Y HUMANIDADES")
Subject.create!(code:"DH110",	title:"GUERRA Y CIVILIZACIÓN",day:"Lunes",	short:"Gc",	hour:"1114",campus:"CANDELARIA",	teacher:"GARAVITO GOMEZ MARIA CLARA",	faculty:"FACULTAD DE FILOSOFÍA Y HUMANIDADES")
Subject.create!(code:"DH130",	title:"FACTORES QUE AFECTAN LA BIODIVERSIDAD COLOMBIANA",	day:"Jueves", short:"Fab",	hour:"1114",		campus:"CANDELARIA",	teacher:"CAMACHO GARZON JANET",	faculty:"DEPARTAMENTO CIENCIAS BÁSICAS" )
Subject.create!(code:"DH131",	title:"COMPRENSIÓN DE LOS COMPONENTES DEL CAMBIO GLOBAL Y DEL DESARROLLO HUMANO",day:"Lunes",	short:"Jd",	hour:"1114",campus:"CANDELARIA",	teacher:"CAMACHO GARZON JANET",	faculty:"DEPARTAMENTO CIENCIAS BÁSICAS")
Subject.create!(code:"DH132",	title:"JUGANDO A SER DETECTIVES",	day:"Jueves",short:"Jd",	hour:"1114",campus:"CANDELARIA",	teacher:"OCHOA CABEZAS DIANA CAROLINA",	faculty:"DEPARTAMENTO CIENCIAS BÁSICAS" )
Subject.create!(code:"DH132",	title:"JUGANDO A SER DETECTIVES",	,day:"Martes",	short:"Jd",	hour:"1114",campus:"CHAPINERO",	teacher:"OCHOA CABEZAS DIANA CAROLINA",	faculty:"DEPARTAMENTO  CIENCIAS BÁSICAS" )
Subject.create!(code:"DH133",	title:"BIOCINE: DE LA FICCIÓN A LA REALIDAD",	"Jueves", short:"Bc",	hour:"1114",campus:"CANDELARIA",	teacher:"LOZANO ARDILA LUCIA CRISTINA",	faculty:"DEPARTAMENTO CIENCIAS BÁSICAS")
Subject.create!(code:"DH133",	title:"BIOCINE: DE LA FICCIÓN A LA REALIDAD",	day:"Lunes",	short:"Bc",	hour:"1114", campus:"CANDELARIA",		teacher:"MUÑOZ ORTIZ ASTRID GEOVANA",	faculty:"DEPARTAMENTO CIENCIAS BÁSICAS")
Subject.create!(code:"DH139",	title:"DURMIENDO CON EL ENEMIGO: EL EXTRAÑO MUNDO DE LAS ENFERMEDADES",	day:"Miércoles",	short:"Eme",	hour:"1114", campus:"NORTE",			faculty:"DEPARTAMENTO  CIENCIAS BÁSICAS")
Subject.create!(code:"DH140",	title:"COLOMBIA A TRAVÉS DE SU BIODIVERSIDAD", day:"Martes",	short:"Cab",hour:"1114",hour:"1114",	campus:"CHAPINERO",	teacher:"VITOLO LOPEZ ADRIANA LEANDRA",	faculty:"DEPARTAMENTO  CIENCIAS BÁSICAS")
Subject.create!(code:"DH142",	title:"MUJERES Y CONOCIMIENTO",	day:"Miércoles",	short:"Mc",	hour:"1114",campus:"NORTE",		faculty:"DEPARTAMENTO DE FORMACIÓN LASALLISTA")
Subject.create!(code:"DH143",	title:"CONFLICTOS INTERNACIONALES Y RELIGIÓN",	"Jueves",	short:"Cir",	hour:"1114",campus:"CANDELARIA",	faculty:"DEPARTAMENTO DE FORMACIÓN LASALLISTA")
Subject.create!(code:"DH143",	title:"CONFLICTOS INTERNACIONALES Y RELIGIÓN",day:"Martes",	short:"Cir",	hour:"1114",campus:"CHAPINERO",	faculty:"DEPARTAMENTO DE FORMACIÓN LASALLISTA")
Subject.create!(code:"DH144",	title:"COMPETENCIAS CIUDADANAS",day:"Lunes",	short:"Cc",	hour:"1114",campus:"CANDELARIA",	faculty:"PROGRAMA CONTADURÍA PÚBLICA")
Subject.create!(code:"DH146",	title:"FORTALECIMIENTO COGNITIVO",day:"Jueves",	short:"Fc",	hour:"1114",campus:"CANDELARIA",	faculty:"FACULTAD DE CIENCIAS AGROPECUARIAS")
Subject.create!(code:"DH146",	title:"FORTALECIMIENTO COGNITIVO",,day:"Martes",	short:"Fc",	hour:"1114",campus:"CHAPINERO",	faculty:"FACULTAD DE CIENCIAS AGROPECUARIAS")
Subject.create!(code:"DH146",	title:"FORTALECIMIENTO COGNITIVO",day:"Viernes",	short:"Fc",	hour:"1821", campus:"CHAPINERO",	faculty:"FACULTAD DE CIENCIAS AGROPECUARIAS")
Subject.create!(code:"DH146",	title:"FORTALECIMIENTO COGNITIVO",day:"Lunes",	short:"Fc",	hour:"1114",campus:"NORTE",	faculty:"FACULTAD DE CIENCIAS AGROPECUARIAS")
Subject.create!(code:"DH147",	title:"CINE DESDE LA PERSPECTIVA LATINOAMERICANA",,day:"Martes",	short:"Cpl",	hour:"1114",campus:"CHAPINERO",	faculty:"FACULTAD DE CIENCIAS ECONÓMICAS Y SOCIALES")
Subject.create!(code:"DH148",	title:"ORGANIZACIONES SOCIALES Y MOVIMIENTO AGRARIO",	"Jueves", short:"Os",	hour:"1114",campus:"CANDELARIA",	faculty:"FACULTAD CIENCIAS ECONÓMICAS Y SOCIALES")
Subject.create!(code:"DH150",	title:"CÁTEDRA BOGOTÁ",day:"Lunes",	short:"Cb",	hour:"1114",campus:"CANDELARIA",	faculty:"FACULTAD CIENCIAS DEL HÁBITAT" )
Subject.create!(code:"DH150",	title:"CÁTEDRA BOGOTÁ",day:"Jueves",	short:"Cb",	hour:"0811",	campus:"CHAPINERO",			faculty:"FACULTAD CIENCIAS DEL HÁBITAT" )
Subject.create!(code:"DH150",	title:"CÁTEDRA BOGOTÁ",day:"Viernes",	short:"Cb",	hour:"1114",campus:"CHAPINERO",		faculty:"FACULTAD CIENCIAS DEL HÁBITAT" )
Subject.create!(code:"DH150",	title:"CÁTEDRA BOGOTÁ",day:"Viernes",	short:"Cb",	hour:"0811",	campus:"CHAPINERO",		faculty:"FACULTAD CIENCIAS DEL HÁBITAT" )
Subject.create!(code:"DH151",	title:"DIBUJO ARTÍSTICO",day:"Jueves",	short:"Da",	hour:"1114",campus:"CANDELARIA",		faculty:"FACULTAD CIENCIAS DEL HÁBITAT" )
Subject.create!(code:"DH151",	title:"DIBUJO ARTÍSTICO",day:"Sábado",	short:"Da",	hour:"0710",	campus:"CANDELARIA",	faculty:"FACULTAD CIENCIAS DEL HÁBITAT" )
  ]
)


Subject.create!(code:"DH103",	title:"ARTE CONTEMPORÁNEO EN JAPÓN", day:"Martes",	short:"Acj", 	hour:"1114",	campus:"CHAPINERO",	classroom:"103F", teacher:"KUMAGAI TAKAAKI",faculty:"FACULTAD DE FILOSOFÍA Y HUMANIDADES"},
Subject.create!(code:"DH110",	title:"GUERRA Y CIVILIZACIÓN",day:"Lunes",	short:"Gc",	hour:"1114",campus:"CANDELARIA",	teacher:"GARAVITO GOMEZ MARIA CLARA",	faculty:"FACULTAD DE FILOSOFÍA Y HUMANIDADES"},
Subject.create!(code:"DH130",	title:"FACTORES QUE AFECTAN LA BIODIVERSIDAD COLOMBIANA",	day:"Jueves", short:"Fab",	hour:"1114",		campus:"CANDELARIA",	teacher:"CAMACHO GARZON JANET",	faculty:"DEPARTAMENTO CIENCIAS BÁSICAS" },
{code:"DH131",	title:"COMPRENSIÓN DE LOS COMPONENTES DEL CAMBIO GLOBAL Y DEL DESARROLLO HUMANO",day:"Lunes",	short:"Jd",	hour:"1114",campus:"CANDELARIA",	teacher:"CAMACHO GARZON JANET",	faculty:"DEPARTAMENTO CIENCIAS BÁSICAS" },
{code:"DH132",	title:"JUGANDO A SER DETECTIVES",	day:"Jueves",short:"Jd",	hour:"1114",campus:"CANDELARIA",	teacher:"OCHOA CABEZAS DIANA CAROLINA",	faculty:"DEPARTAMENTO CIENCIAS BÁSICAS" },
{code:"DH132",	title:"JUGANDO A SER DETECTIVES",	,day:"Martes",	short:"Jd",	hour:"1114",campus:"CHAPINERO",	teacher:"OCHOA CABEZAS DIANA CAROLINA",	faculty:"DEPARTAMENTO  CIENCIAS BÁSICAS" },
{code:"DH133",	title:"BIOCINE: DE LA FICCIÓN A LA REALIDAD",	"Jueves", short:"Bc",	hour:"1114",campus:"CANDELARIA",	teacher:"LOZANO ARDILA LUCIA CRISTINA",	faculty:"DEPARTAMENTO CIENCIAS BÁSICAS" },
{code:"DH133",	title:"BIOCINE: DE LA FICCIÓN A LA REALIDAD",	day:"Lunes",	short:"Bc",	hour:"1114", campus:"CANDELARIA",		teacher:"MUÑOZ ORTIZ ASTRID GEOVANA",	faculty:"DEPARTAMENTO CIENCIAS BÁSICAS" },
{code:"DH139",	title:"DURMIENDO CON EL ENEMIGO: EL EXTRAÑO MUNDO DE LAS ENFERMEDADES",	day:"Miércoles",	short:"Eme",	hour:"1114", campus:"NORTE",			faculty:"DEPARTAMENTO  CIENCIAS BÁSICAS" },
{code:"DH140",	title:"COLOMBIA A TRAVÉS DE SU BIODIVERSIDAD",	,day:"Martes",	short:"Cab",hour:"1114",hour:"1114",	campus:"CHAPINERO",	teacher:"VITOLO LOPEZ ADRIANA LEANDRA",	faculty:"DEPARTAMENTO  CIENCIAS BÁSICAS" },
{code:"DH142",	title:"MUJERES Y CONOCIMIENTO",	day:"Miércoles",	short:"Mc",	hour:"1114",campus:"NORTE",		faculty:"DEPARTAMENTO DE FORMACIÓN LASALLISTA"},
{code:"DH143",	title:"CONFLICTOS INTERNACIONALES Y RELIGIÓN",	"Jueves"	short:"Cir",	hour:"1114",ampus:"CANDELARIA",	faculty:"DEPARTAMENTO DE FORMACIÓN LASALLISTA"},
{code:"DH143",	title:"CONFLICTOS INTERNACIONALES Y RELIGIÓN",,day:"Martes",	short:"Cir",	hour:"1114",campus:"CHAPINERO",	faculty:"DEPARTAMENTO DE FORMACIÓN LASALLISTA"},
{code:"DH144",	title:"COMPETENCIAS CIUDADANAS",day:"Lunes",	short:"Cc",	hour:"1114",campus:"CANDELARIA",	faculty:"PROGRAMA CONTADURÍA PÚBLICA"},
{code:"DH146",	title:"FORTALECIMIENTO COGNITIVO","Jueves"	short:"Fc",	hour:"1114",ampus:"CANDELARIA",	faculty:"FACULTAD DE CIENCIAS AGROPECUARIAS"},
{code:"DH146",	title:"FORTALECIMIENTO COGNITIVO",,day:"Martes",	short:"Fc",	hour:"1114",campus:"CHAPINERO",	faculty:"FACULTAD DE CIENCIAS AGROPECUARIAS"},
{code:"DH146",	title:"FORTALECIMIENTO COGNITIVO",day:"Viernes",	short:"Fc",	hour:"1821", campus:"CHAPINERO",	faculty:"FACULTAD DE CIENCIAS AGROPECUARIAS"},
{code:"DH146",	title:"FORTALECIMIENTO COGNITIVO",day:"Lunes",	short:"Fc",	hour:"1114",campus:"NORTE",	faculty:"FACULTAD DE CIENCIAS AGROPECUARIAS"},
{code:"DH147",	title:"CINE DESDE LA PERSPECTIVA LATINOAMERICANA",,day:"Martes",	short:"Cpl",	hour:"1114",campus:"CHAPINERO",	faculty:"FACULTAD DE CIENCIAS ECONÓMICAS Y SOCIALES"},
{code:"DH148",	title:"ORGANIZACIONES SOCIALES Y MOVIMIENTO AGRARIO",	"Jueves" short:"Os",	hour:"1114",campus:"CANDELARIA",	faculty:"FACULTAD CIENCIAS ECONÓMICAS Y SOCIALES"},
{code:"DH150",	title:"CÁTEDRA BOGOTÁ",day:"Lunes",	short:"Cb",	hour:"1114",campus:"CANDELARIA",	faculty:"FACULTAD CIENCIAS DEL HÁBITAT" },
{code:"DH150",	title:"CÁTEDRA BOGOTÁ",day:"Jueves",	short:"Cb",	hour:"0811",	campus:"CHAPINERO",			faculty:"FACULTAD CIENCIAS DEL HÁBITAT" },
{code:"DH150",	title:"CÁTEDRA BOGOTÁ",day:"Viernes",	short:"Cb",	hour:"1114",campus:"CHAPINERO",		faculty:"FACULTAD CIENCIAS DEL HÁBITAT" },
{code:"DH150",	title:"CÁTEDRA BOGOTÁ",day:"Viernes",	short:"Cb",	hour:"0811",	campus:"CHAPINERO",		faculty:"FACULTAD CIENCIAS DEL HÁBITAT" },
{code:"DH151",	title:"DIBUJO ARTÍSTICO",day:"Jueves",	short:"Da",	hour:"1114",campus:"CANDELARIA",		faculty:"FACULTAD CIENCIAS DEL HÁBITAT" },
{code:"DH151",	title:"DIBUJO ARTÍSTICO",day:"Sábado",	short:"Da",	hour:"0710",	campus:"CANDELARIA",	faculty:"FACULTAD CIENCIAS DEL HÁBITAT" },
code:"DH151",	title:"DIBUJO ARTÍSTICO",day:"Sábado",	short:"Da",	1013	campus:"CANDELARIA",faculty:"FACULTAD CIENCIAS DEL HÁBITAT" 
code:"DH154",	title:"INTRODUCCIÓN A LA POLÍTICA PARA GENTE DECENTE",day:"Lunes",	short:"Pgd",	hour:"1114",campus:"CANDELARIA",faculty:"FACULTAD DE FILOSOFÍA Y HUMANIDADES"
code:"DH154",	title:"INTRODUCCIÓN A LA POLÍTICA PARA GENTE DECENTE",day:"Lunes",	short:"Pgd",	hour:"1821",	campus:"CANDELARIA",	faculty:"FACULTAD DE FILOSOFÍA Y HUMANIDADES"
code:"DH155",	title:"CREACIÓN POÉTICA",day:"Lunes",	short:"Cpo",	hour:"1114",campus:"CANDELARIA",	faculty:"FACULTAD DE FILOSOFÍA Y HUMANIDADES"
code:"DH157",	title:"CIUDADANÍA Y POLÍTICA",,day:"Martes",	short:"Cp",	hour:"1114",campus:"CHAPINERO",		 faculty:"FACULTAD DE FILOSOFÍA Y HUMANIDADES"
code:"DH159",	title:"CINE Y POLÍTICA COLOMBIANA",,day:"Martes",	short:"Cpc",	hour:"1114",campus:"CANDELARIA",		faculty:"FACULTAD DE FILOSOFÍA Y HUMANIDADES"
code:"DH163",	title:"APRECIACIÓN COMPARADA DE LA MÚSICA",day:"Jueves",	short:"Acm",	hour:"1114",campus:"CANDELARIA",faculty:"VPDH"
code:"DH163",	title:"APRECIACIÓN COMPARADA DE LA MÚSICA",,day:"Martes",	short:"Acm",	hour:"1114",campus:"CHAPINERO",	faculty:"VPDH"
code:"DH163",	title:"APRECIACIÓN COMPARADA DE LA MÚSICA",day:"Sábado",	short:"Acm",	hour:"0912",	campus:"CHAPINERO",	faculty:"VPDH"
code:"DH163",	title:"APRECIACIÓN COMPARADA DE LA MÚSICA",day:"Sábado",	short:"Acm",	hour:"0912",	campus:"CHAPINERO",		.	faculty:"VPDH"
code:"DH163",	title:"APRECIACIÓN COMPARADA DE LA MÚSICA",day:"Lunes",	short:"Acm",	hour:"1114",campus:"NORTE",	faculty:"VPDH"
code:"DH164",	title:"CUERPO LENGUAJE Y COMUNICACIÓN",day:"Lunes",	short:"Clc",	hour:"1114",campus:"CANDELARIA",	faculty:"VPDH"
code:"DH165",	title:"SOCIEDAD Y CULTURA EN LA  ERA DIGITAL",day:"Lunes",	short:"Scd"	hour:"1821",	campus:"CHAPINERO",	faculty:"DEPARTAMENTO DE FORMACIÓN LASALLISTA"
code:"DH165",	title:"SOCIEDAD Y CULTURA EN LA  ERA DIGITAL",,day:"Martes",	short:"Scd"	hour:"1821",	campus:"CHAPINERO",	faculty:"DEPARTAMENTO DE FORMACIÓN LASALLISTA"
code:"DH167",	title:"CIENCIA, FICCIÓN Y CULTURA",day:"Lunes",	short:"Cfc",	hour:"1114",campus:"CHAPINERO",	faculty:"DEPARTAMENTO DE FORMACIÓN LASALLISTA"
code:"DH167",	title:"CIENCIA, FICCIÓN Y CULTURA",,day:"Martes",	short:"Cfc",	hour:"1114",campus:"CHAPINERO",	faculty:"DEPARTAMENTO DE FORMACIÓN LASALLISTA"
code:"DH169",	title:"COMAMOS CARNE:  VERDADES Y NO VERDADES",day:"Miércoles",	short:"Cc"	hour:"1114",campus:"NORTE",faculty:"FACULTAD DE CIENCIAS AGROPECUARIAS"
code:"DH170",	title:"EL OCASO DEL AMOR: ENTRE LA ABNEGACIÓN Y LA LIBERTAD",>day:"Lunes",	short:"Oa"	hour:"1114",campus:"CHAPINERO",	faculty:"FACULTAD CIENCIAS ECONÓMICAS Y SOCIALES"
code:"DH174",	title:"CINE Y NARRATIVAS VISUALES",day:"Lunes",	short:"Cnv"	hour:"1114",campus:"CHAPINERO",	faculty:"FACULTAD CIENCIAS ECONÓMICAS Y SOCIALES"
code:"DH175",	title:"MÚSICA: HISTORIAS, JÓVENES Y REVOLUCIÓN",	day:"Martes",	short:"Mhj"	hour:"1114",campus:"CHAPINERO",	faculty:"FACULTAD CIENCIAS ECONÓMICAS Y SOCIALES"
code:"DH176",	title:"COMUNICACIÓN POLÍTICA",day:"Lunes",	short:"Cp",	hour:"1114",campus:"CHAPINERO",		faculty:"FACULTAD CIENCIAS ECONÓMICAS Y SOCIALES"
code:"DH181",	title:"EDUCACIÓN, CONFLICTO Y PAZ",day:"Lunes",	short:"Ecp"	hour:"1114",campus:"CHAPINERO",	faculty:"FACULTAD DE CIENCIAS DE LA EDUCACIÓN"
code:"DH184",	title:"ÍCONOS, IMÁGENES Y SUS LÓGICAS",,day:"Martes",	short:"Li",	hour:"1114",campus:"CHAPINERO",		faculty:"FACULTAD DE CIENCIAS DE LA EDUCACIÓN"
code:"DH185",	title:"LOS JÓVENES Y LA BIBLIA",day:"Lunes",	short:"Jb",	hour:"1114",campus:"CHAPINERO",	faculty:"FACULTAD DE CIENCIAS DE LA EDUCACIÓN"
code:"DH186",	title:"LECTURA Y ESCRITURA DE TEXTOS ACADÉMICOS",day:"Lunes",	short:"Let",	hour:"1114",campus:"CHAPINERO",		faculty:"FACULTAD DE CIENCIAS DE LA EDUCACIÓN"
code:"DH186",	title:"LECTURA Y ESCRITURA DE TEXTOS ACADÉMICOS",	day:"Martes",	short:"Let",	hour:"1114",campus:"CHAPINERO",		faculty:"FACULTAD DE CIENCIAS DE LA EDUCACIÓN"
code:"DH186",	title:"LECTURA Y ESCRITURA DE TEXTOS ACADÉMICOS",	day:"Lunes",	short:"Let",	hour:"1114",					campus:"CHAPINERO",	faculty:"FACULTAD DE CIENCIAS DE LA EDUCACIÓN"
code:"DH186",	title:"LECTURA Y ESCRITURA DE TEXTOS ACADÉMICOS",	day:"Miércoles",	short:"Let",	hour:"1821",		campus:"CHAPINERO",	faculty:"FACULTAD DE CIENCIAS DE LA EDUCACIÓN"
code:"DH186",	title:"LECTURA Y ESCRITURA DE TEXTOS ACADÉMICOS",	day:"Miércoles",	short:"Let",			hour:"1820",	faculty:"FACULTAD DE CIENCIAS DE LA EDUCACIÓN"
code:"DH187",	title:"LECTURA CRÍTICA Y TEXTOS ARGUMENTATIVOS",day:"Lunes",	short:"Let",	hour:"1114", campus:"CHAPINERO",	faculty:"FACULTAD DE CIENCIAS DE LA EDUCACIÓN"
code:"DH189",	title:"CUIDADO DE SÍ Y DE LOS OTROS",,day:"Martes",	short:"Cso",	hour:"1114", campus:"CHAPINERO",	faculty:"FACULTAD DE CIENCIAS DE LA EDUCACIÓN"
code:"DH191",	title:"EL DERECHO A LA EDUCACIÓN EN COLOMBIA",	day:"Martes",	short:"Dec",	hour:"1114",	campus:"CHAPINERO",			faculty:"FACULTAD DE CIENCIAS DE LA EDUCACIÓN"
code:"DH192",	title:"TECNOLOGÍA AMBIENTE Y SALUD",	day:"Martes",	short:"Tas"	hour:"1114",campus:"CHAPINERO",	faculty:"FACULTAD CIENCIAS DE LA SALUD"
code:"DH194",	title:"ARTE Y CULTURA VISUAL EN JAPÓN",	day:"Viernes",	short:"Avj",	hour:"1821",campus:"CHAPINERO",	 faculty:"FACULTAD DE FILOSOFÍA Y HUMANIDADES"
code:"DH196",	title:"CUERPO Y RECONCILIACIÓN",	day:"Lunes",	short:"Cr",	hour:"1821",		campus:"CHAPINERO",	 faculty:"FACULTAD DE FILOSOFÍA Y HUMANIDADES"
code:"DH203",	title:"CINE Y LITERATURA DE CIENCIA FICCIÓN",	day:"Miércoles",	short:"Clf",	hour:"1114",campus:"CHAPINERO",	 faculty:"FACULTAD DE FILOSOFÍA Y HUMANIDADES"
code:"DH204",	title:"ESTRATEGIAS PARA LA CONSTRUCCIÓN DE MEMORIA HISTÓRICA EN COLOMBIA",day:"Miércoles",	short:"Mhc",	hour:"1821",	campus:"CHAPINERO",	 faculty:"FACULTAD DE FILOSOFÍA Y HUMANIDADES"
code:"DH205",	title:"MUJER Y VIOLENCIA EN EL CINE",	20	3		2	day:"Jueves",	short:"Mvc",	hour:"1821",	campus:"CHAPINERO",		 faculty:"FACULTAD DE FILOSOFÍA Y HUMANIDADES"
code:"DH206",	title:"RECREANDO EL MUNDO CON ARTE",	9	16	day:"Sábado",	short:"Rma",	hour:"0912",		campus:"CHAPINERO",	faculty:"VPDH"
code:"DH206",	title:"RECREANDO EL MUNDO CON ARTE",	15	10	day:"Lunes",	short:"Rma",	hour:"1114",campus:"NORTE",	faculty:"VPDH"
code:"DH207",	title:"DE LAS TABLAS AL TABLERO",	20	3	18	7	day:"Sábado",	short:"Tt",	hour:"0912",	campus:"CHAPINERO",	faculty:"VPDH"
code:"DH208",	title:"COOPERATIVISMO Y EMPRESA DE FAMILIA",day:"Lunes",	Cef	hour:"1114",campus:"NORTE",		faculty:"FACULTAD DE CIENCIAS AGROPECUARIAS"
code:"DH209",	title:"OPCIONES PARA EL EMPRENDIMIENTO",day:"Miércoles",	Oe	hour:"1114",campus:"NORTE",		faculty:"FACULTAD DE CIENCIAS AGROPECUARIAS"
code:"DH210",	title:"ALTERNATIVAS SOSTENIBLES PARA EL DESARROLLO",	24	1	day:"Lunes",	Asd	hour:"1114", campus:"NORTE",	S03	NAVAS PANADERO ALEXANDER	faculty:"FACULTAD DE CIENCIAS AGROPECUARIAS"
code:"DH210",	title:"ALTERNATIVAS SOSTENIBLES PARA EL DESARROLLO",	2	3	22	3	day:"Lunes",	Asd	hour:"1114",					21	campus:"NORTE",	S04	ROMERO RAMIREZ ANA CECILIA	faculty:"FACULTAD DE CIENCIAS AGROPECUARIAS"
code:"DH211",	title:"APICULTURA COMO ALTERNATIVA SOCIO-AMBIENTAL Y PROFESIONAL",day:"Lunes",	Ap	hour:"1114",						campus:"NORTE",	S08	CASTIBLANCO BELTRAN JUDITH	faculty:"FACULTAD DE CIENCIAS AGROPECUARIAS"
code:"DH211",	title:"APICULTURA COMO ALTERNATIVA SOCIO-AMBIENTAL Y PROFESIONAL",	2	3day:"Miércoles",	Ap	hour:"1114",ampus:"NORTE",	S03	CASTIBLANCO BELTRAN JUDITH	faculty:"FACULTAD DE CIENCIAS AGROPECUARIAS"
code:"DH212",	title:"APRENDIENDO DE ACUARIOS Y PECES",		2	day:"Miércoles",	Aap	1114		1114				20	campus:"NORTE",	S32	GONZALEZ ACOSTA JULIO ALBERTO	faculty:"FACULTAD DE CIENCIAS AGROPECUARIAS"
code:"DH215",	title:"ECOLOGÍA URBANA",		day:"Lunes",	Eu	1114	 campus:"CANDELARIA",	406C	CAMPOS SALAZAR LAURA VICTORIA	faculty:"DEPARTAMENTO CIENCIAS BÁSICAS" 
code:"DH218",	title:"PATOLOGÍAS SOCIALES Y LA PAZ COMO TERAPÉUTICA INTEGRAL",	2		,day:"Martes",	Psp	1114	1114					2	campus:"CHAPINERO",	306F		faculty:"FACULTAD CIENCIAS DE LA SALUD"
code:"DH219",	title:"FOTOGRAFÍA COMO CRÍTICA SOCIAL",		day:"Sábado",	Fcs	1114					1114	6	campus:"CHAPINERO",	203F		 faculty:"FACULTAD DE FILOSOFÍA Y HUMANIDADES"
code:"DH219",	title:"FOTOGRAFÍA COMO CRÍTICA SOCIAL",	2	3day:"Jueves",	Fcs	1114			1114			22	campus:"CHAPINERO",	501P	VALDES MARTINEZ ANDRES FELIPE	 faculty:"FACULTAD DE FILOSOFÍA Y HUMANIDADES"
code:"DH219",	title:"FOTOGRAFÍA COMO CRÍTICA SOCIAL",	20	3	25		2	day:"Sábado",	Fcs	1114					1114	19	campus:"CHAPINERO",	101F	.	 faculty:"FACULTAD DE FILOSOFÍA Y HUMANIDADES"
code:"DH220",	title:"MUSIC, LOVE AND DEATH",	20	3	25	18	7	day:"Sábado",	Mld	1013					1013	14	campus:"CANDELARIA",	410D	.	faculty:"FACULTAD DE FILOSOFÍA Y HUMANIDADES"
code:"DH221",	title:"TECNOLOGÍA Y SOCIEDAD",	20	3	25		2	day:"Viernes",	Ts	hour:"1821",				hour:"1821",		18	campus:"CHAPINERO",	202F	.	 faculty:"FACULTAD DE FILOSOFÍA Y HUMANIDADES"
code:"DH222",	title:"AGROTURISMO",	24	1	day:"Lunes",	Agt	1114	 campus:"NORTE",	S31	ANGEL MATIZ JAVIER DAVID	faculty:"PROGRAMA DE INGENIERÍA INDUSTRIAL"
code:"DH223",	title:"GESTIÓN AMBIENTAL",	15	10	,day:"Martes",	Ga	1114	1114					12	campus:"CHAPINERO",	307F	MORA DIAZ ANA MERCEDES	faculty:"PROGRAMA DE INGENIERÍA AMBIENTAL Y SANITARIA"
code:"DH223",	title:"GESTIÓN AMBIENTAL",	2	3	25	17	8	day:"Miércoles",	Ga	1114		1114				16	campus:"NORTE",	S04	MORA DIAZ ANA MERCEDES	faculty:"PROGRAMA DE INGENIERÍA AMBIENTAL Y SANITARIA"
code:"DH224",	title:"RELACIÓN HUMANO: ANIMALES DE COMPAÑÍA",	25day:"Jueves",	Rha	1114			1114			24	campus:"CANDELARIA",	401B	CORREDOR LONDONO MARIA CAMILA	faculty:"FACULTAD DE CIENCIAS AGROPECUARIAS"
code:"DH224",	title:"RELACIÓN HUMANO: ANIMALES DE COMPAÑÍA",	2	3	25	24	1	,day:"Martes",	Rha	1114	1114					24	campus:"CHAPINERO",	308F	CORREDOR LONDONO MARIA CAMILA	faculty:"FACULTAD DE CIENCIAS AGROPECUARIAS"
code:"DH224",	title:"RELACIÓN HUMANO: ANIMALES DE COMPAÑÍA",	24	1	day:"Lunes",	Rha	1114						24	campus:"NORTE",	S32	CORREDOR LONDONO MARIA CAMILA	faculty:"FACULTAD DE CIENCIAS AGROPECUARIAS"
code:"DH224",	title:"RELACIÓN HUMANO: ANIMALES DE COMPAÑÍA",	2	3	25	25day:"Miércoles",	Rha	1114		1114				25	campus:"NORTE",	S33	CORREDOR LONDONO MARIA CAMILA	faculty:"FACULTAD DE CIENCIAS AGROPECUARIAS"
code:"DH225",	title:"EL COMPORTAMIENTO ANIMAL: DEL DICHO AL HECHO",		2	day:"Jueves",	Ca	1114			1114			22	campus:"CANDELARIA",	402B	ESCALLON HERKRATH CAMILO	faculty:"DEPARTAMENTO CIENCIAS BÁSICAS" 
code:"DH249",	title:"EL CUERPO, SUS ADORNOS Y EXTENSIONES",	5	20	day:"Jueves",	Cae	1114			1114			5	campus:"CANDELARIA",	603D	SUAZA VARGAS LUZ MARINA	faculty:"FACULTAD DE CIENCIAS ECONÓMICAS Y SOCIALES" 
code:"DH249",	title:"EL CUERPO, SUS ADORNOS Y EXTENSIONES",	25day:"Lunes",	Cae	1114						25	campus:"CHAPINERO",	207F	SUAZA VARGAS LUZ MARINA	faculty:"FACULTAD DE CIENCIAS ECONÓMICAS Y SOCIALES" 
code:"DH250",	title:"HERRAMIENTAS PARA EL TRABAJO SOSTENIBLE CON COMUNIDADES",	13	12	day:"Jueves",	Hts	1114			1114			13	campus:"CANDELARIA",	604D	TORRES GAMEZ MYRIAM FERNANDA	faculty:"FACULTAD DE CIENCIAS ECONÓMICAS Y SOCIALES" 
code:"DH250",	title:"HERRAMIENTAS PARA EL TRABAJO SOSTENIBLE CON COMUNIDADES",	25day:"Lunes",	Hts	1114							campus:"CHAPINERO",	208F	BEDOYA CALVO ISABEL CRISTINA	faculty:"FACULTAD DE CIENCIAS ECONÓMICAS Y SOCIALES" 
code:"DH251",	title:"PSICOSEXUALIDAD",	7	18	day:"Jueves",	Ps	1114			1114			4	campus:"CANDELARIA",	605D		faculty:"FACULTAD DE CIENCIAS ECONÓMICAS Y SOCIALES" 
code:"DH251",	title:"PSICOSEXUALIDAD",	25,day:"Martes",	Ps	1114	1114					24	campus:"CHAPINERO",	309F	ROA MENDOZA CLAUDIA PATRICIA	faculty:"FACULTAD DE CIENCIAS ECONÓMICAS Y SOCIALES" 
code:"DH252",	title:"PEDAGOGÍAS CRÍTICAS Y EDUCACIÓN POPULAR",25	day:"Jueves",	Pc	1114			1114		campus:"CANDELARIA",		VARGAS SALAMANCA QUIHICHA HISCA IRACA	faculty:"FACULTAD DE CIENCIAS ECONÓMICAS Y SOCIALES" 
code:"DH252",	title:"PEDAGOGÍAS CRÍTICAS Y EDUCACIÓN POPULAR",	17	8	day:"Lunes",	Pc	1114						16	campus:"CHAPINERO",	209F	SERNA MAYA BEATRIZ ELENA	faculty:"FACULTAD DE CIENCIAS ECONÓMICAS Y SOCIALES" 
code:"DH253",	title:"SOSTENIBILIDAD EN LA CONSTRUCCIÓN",	5	20	day:"Miércoles",	Sec	1417		1417				3	campus:"CANDELARIA",		faculty:"INGENIERÍA CIVIL"
code:"DH254",	title:"ESTRATEGIAS PARA EL MEJORAMIENTO DE LAS HABILIDADES DE LECTURA ESCRITURA Y TÉCNICAS DE ESTUDIO",	5	20	day:"Jueves",	Te	1114			1114			4	campus:"CANDELARIA",	607D	SERNA MAYA BEATRIZ ELENA	faculty:"FACULTAD DE CIENCIAS ECONÓMICAS Y SOCIALES" 
code:"DH254",	title:"ESTRATEGIAS PARA EL MEJORAMIENTO DE LAS HABILIDADES DE LECTURA ESCRITURA Y TÉCNICAS DE ESTUDIO",	14	11	,day:"Martes",	Te	1114	1114					13	campus:"CHAPINERO",	310F	SERNA MAYA BEATRIZ ELENA	faculty:"FACULTAD DE CIENCIAS ECONÓMICAS Y SOCIALES" 
code:"DH255",	title:"EDUCACIÓN FINANCIERA PARA TODOS",	25day:"Lunes",	Ef	1114						24	campus:"CANDELARIA",	601D	MASMELA GONZALEZ CARLOS ENRIQUE	faculty:"PROGRAMA DE INGENIERÍA INDUSTRIAL"
code:"DH256",	title:"GESTIÓN DE LA FELICIDAD",		2	day:"Jueves",	Gf	1114			1114			21	campus:"CANDELARIA",	403B	MASMELA GONZALEZ CARLOS ENRIQUE	faculty:"PROGRAMA DE INGENIERÍA INDUSTRIAL"
code:"DH257",	title:"PROSPECTIVA TERRITORIAL RURAL",	16	9	,day:"Martes",	Ptr	1114	1114					15	campus:"NORTE",	S40	ANGEL MATIZ JAVIER DAVID	faculty:"FACULTAD DE CIENCIAS AGROPECUARIAS"
code:"DH258",	title:"BIODANZA, MOVIMIENTO VITAL",	12	13	day:"Viernes",	Bdz	1114				1114		11	campus:"CANDELARIA",	MUÑOZ ORTIZ ASTRID GEOVANA	faculty:"DEPARTAMENTO  CIENCIAS BÁSICAS" 
code:"DH259",	title:"BALANCED SCORECARD",25	day:"Lunes",	Bs	1114					campus:"CANDELARIA",	602D		faculty:"PROGRAMA DE INGENIERÍA INDUSTRIAL"
code:"DH260",	title:"BIOENSAYOS",	1	24	day:"Jueves",	Be	1114			11131314		campus:"CANDELARIA",	409D609D		faculty:"DEPARTAMENTO  CIENCIAS BÁSICAS" 
code:"DH261",	title:"BIOPRODUCTOS: ESTUDIO, APLICACIÓN EN SALUD AGRICULTURA E INDUSTRIA",	1	3	11	day:"Lunes",	Bp	1114					campus:"CANDELARIA",			faculty:"DEPARTAMENTO  CIENCIAS BÁSICAS" 
code:"DH261",	title:"BIOPRODUCTOS: ESTUDIO, APLICACIÓN EN SALUD AGRICULTURA E INDUSTRIA",	2	3	2525	day:"Lunes",	Bp	1114					campus:"CANDELARIA",	501C603D		faculty:"DEPARTAMENTO  CIENCIAS BÁSICAS" 
code:"DH262",	title:"CONTAMINACIÓN ELECTROMAGNÉTICA",	1	30day:"Lunes",	Cel	1114					campus:"CANDELARIA",			faculty:"DEPARTAMENTO  CIENCIAS BÁSICAS" 
code:"DH263",	title:"COSMOLOGÍA MODERNA PARA INGENIEROS",	15	10	day:"Jueves",	Cmi	1114			1114			14	campus:"CANDELARIA",	611D	MENDEZ ARENAS ANDRES FELIPE	faculty:"DEPARTAMENTO  CIENCIAS BÁSICAS" 
code:"DH265",	title:"ILUSTRACIÓN CIENTÍFICA: RETRATANDO LA NATURALEZA",	4	21	day:"Jueves",	Rn	1114			1114			4	campus:"CANDELARIA",	502E		faculty:"DEPARTAMENTO  CIENCIAS BÁSICAS" 
code:"DH266",	title:"TECNOLOGÍA DEL ADN COMBINANTE PARA OBTENCIÓN DE PROTEÍNAS CON APLICACIÓN EN SALUD AMBIENTE E INDUSTR",	11	14	day:"Jueves",	Adn	1114			1114			11	campus:"CANDELARIA",	407B	GOMEZ RAMIREZ MARIA VANESSA	faculty:"DEPARTAMENTO  CIENCIAS BÁSICAS" 
code:"DH267",	title:"CONTROL DE PROCESOS EMPRESARIALES",	1	3	5	1	4	,day:"Martes",	Cpe	hour:"0811",	hour:"0811",					1	campus:"CANDELARIA",		faculty:"INGENIERÍA CIVIL"
code:"DH267",	title:"CONTROL DE PROCESOS EMPRESARIALES",	16	9	day:"Miércoles",	Cpe	1316		1316				16	campus:"CHAPINERO",	502P		faculty:"INGENIERÍA CIVIL"
code:"DH268",	title:"DISEÑO DE SISTEMAS DE GESTIÓN EMPRESARIAL",	2	23	day:"Jueves",	Dsg	0710			0710			2	campus:"CANDELARIA",		faculty:"INGENIERÍA CIVIL"
code:"DH268",	title:"DISEÑO DE SISTEMAS DE GESTIÓN EMPRESARIAL",	1	3	26	24	2	day:"Jueves",	Dsg	1316			1316			21	campus:"CHAPINERO",	511P	OSORIO ARANGO HECTOR	faculty:"INGENIERÍA CIVIL"
code:"DH269",	title:"CIUDADANÍA POLÍTICA",	2	23	day:"Jueves",	Cp	1114			1114			1	campus:"CANDELARIA",	408B		faculty:"FACULTAD DE FILOSOFÍA Y HUMANIDADES"
code:"DH271",	title:"LA ERA NETFLIX",	25day:"Lunes",	Nfx	1114						25	campus:"CHAPINERO",	210F	CASTAÑEDA LOZANO YEBRAIL	faculty:"FACULTAD DE CIENCIAS DE LA EDUCACIÓN"
code:"DH272",	title:"CULTURA INTERCULTURALIDAD",	20	3	25	11	14	,day:"Martes",	Cic		1819P		2022P			7		LAB 	.	faculty:"FACULTAD DE CIENCIAS DE LA EDUCACIÓN"
code:"DH275",	title:"LA AVENTURA DE SER MISIONERO",	1	0.5	2	25	21		Asm	4				1113		411D	LA campus:"CANDELARIA",	faculty:"VPDH"
code:"DH275",	title:"LA AVENTURA DE SER MISIONERO",	1	0.5	2	25	11		Asm	14		1113				208F	campus:"CHAPINERO",	faculty:"VPDH"
code:"DH275",	title:"LA AVENTURA DE SER MISIONERO",	1	0.5	2	25	Asm	25			1113				campus:"NORTE",.	faculty:"VPDH"
code:"DH277",	title:"APICULTURA COMO ALTERNATIVA SOCIO-AMBIENTAL Y PROFESIONAL",	1	30,day:"Martes",	Ap		1114				campus:"CHAPINERO",		CASTIBLANCO BELTRAN JUDITH	faculty:"FACULTAD CIENCIAS AGROPECUARIAS" 
code:"DH278",	title:"SOCIEDAD DE CONSUMO, JÓVENES Y RELIGIÓN",	20	3	2525	day:"Lunes",	Cjr	hour:"1821",					campus:"CHAPINERO",	.	faculty:"DEPARTAMENTO DE FORMACIÓN LASALLISTA"
code:"DH279",	title:"PATOLOGÍAS SOCIALES Y LA PAZ COMO TERAPÉUTICA INTEGRAL",25	day:"Jueves",	Psp				1114		campus:"CANDELARIA",			faculty:"FACULTAD CIENCIAS DE LA SALUD" 
code:"DHA46",	title:"BIODIVERSIDAD RITMOS Y SABORES",	25day:"Jueves",	Brs				1114			23	campus:"CANDELARIA",	501B	NUÑEZ AVELLANEDA LUIS ALBERTO	faculty:"DEPARTAMENTO  CIENCIAS BÁSICAS" 
code:"DHA51",	title:"SOCIEDAD DE CONSUMO, JÓVENES Y RELIGIÓN",	17	8	day:"Jueves",	Cjr				1114			14	campus:"CANDELARIA",	502B	TORRES SERRANO JUAN MANUEL	faculty:"DEPARTAMENTO DE FORMACIÓN LASALLISTA"
code:"DHA51",	title:"SOCIEDAD DE CONSUMO, JÓVENES Y RELIGIÓN",	16	9	,day:"Martes",	Cjr		1114					16	campus:"CHAPINERO",	312F	TORRES SERRANO JUAN MANUEL	faculty:"DEPARTAMENTO DE FORMACIÓN LASALLISTA"
code:"DHA51",	title:"JÓVENES MERCADO Y RELIGIÓN",	1	24	day:"Miércoles",	Jmr			1114				1	campus:"NORTE",	S05		faculty:"DEPARTAMENTO DE FORMACIÓN LASALLISTA"
code:"DHA57",	title:"ENCUENTROS TRANSNACIONALES EN EL ARTE: AMÉRICA LATINA Y JAPÓN",	25day:"Lunes",	Alj	1114						23	campus:"CANDELARIA",	402B	KUMAGAI TAKAAKI	faculty:"FACULTAD DE FILOSOFÍA Y HUMANIDADES"
code:"DHA73",	title:"CINE Y MODERNIDAD",	25day:"Jueves",	Cym				1114			23	campus:"CANDELARIA",	503B	ROMAN ECHEVERRI CARLOS GUSTAVO	faculty:"FACULTAD DE FILOSOFÍA Y HUMANIDADES"
code:"DHA74",	title:"PATOLOGIAS DE LA MODERNIDAD",	24	1	day:"Lunes",	Pm	1114						24	campus:"CHAPINERO",	301F	BUITRAGO PEÑA MARIA DEL PILAR	faculty:"DEPARTAMENTO DE FORMACIÓN LASALLISTA"
code:"DHA74",	title:"PATOLOGIAS DE LA MODERNIDAD",	2	3	25	13	12	,day:"Martes",	Pm		1114					12	campus:"CHAPINERO",	401F	BUITRAGO PEÑA MARIA DEL PILAR	faculty:"DEPARTAMENTO DE FORMACIÓN LASALLISTA"
code:"DHA75",	title:"ANIMALES Y HUMANOS LA DIFERENCIA",	24	1	day:"Jueves",	Ahd				1114			22	campus:"CANDELARIA",	504B	LOPEZ GOMEZ CATALINA	faculty:"DEPARTAMENTO DE FORMACIÓN LASALLISTA"
code:"DHA75",	title:"ANIMALES Y HUMANOS LA DIFERENCIA",	15	10	,day:"Martes",	Ahd		1114					13	campus:"CHAPINERO",	402F	LOPEZ GOMEZ CATALINA	faculty:"DEPARTAMENTO DE FORMACIÓN LASALLISTA"
code:"DHA79",	title:"FASHION AND IDEOLOGY",	10	15	day:"Jueves",	Fai				1114			9	campus:"CANDELARIA",	505B	SANCHEZ TELLO FELIPE	faculty:"FACULTAD DE FILOSOFÍA Y HUMANIDADES"
code:"DHA80",	title:"MUJERES Y CONOCIMIENTO",	25day:"Jueves",	Mc				1114			24	campus:"CANDELARIA",	506B	CARRENO MANOSALVA CLARA INES	faculty:"DEPARTAMENTO DE FORMACIÓN LASALLISTA"
code:"DHA80",	title:"MUJERES Y CONOCIMIENTO",	24	1	,day:"Martes",	Mc		1114					23	campus:"CHAPINERO",	403F	CARRENO MANOSALVA CLARA INES	faculty:"DEPARTAMENTO DE FORMACIÓN LASALLISTA"
code:"DHA92",	title:"SOCIEDAD Y CULTURA EN LA ERA DIGITAL",	15	10	,day:"Martes",	Scd		1114					14	campus:"CHAPINERO",	404F	QUIROGA SICHACA LUIS ENRIQUE	faculty:"DEPARTAMENTO DE FORMACIÓN LASALLISTA"
code:"DHA92",	title:"SOCIEDAD Y CULTURA EN LA ERA DIGITAL",	17	8	day:"Miércoles",	Scd			1114				17	campus:"NORTE",	S06	QUIROGA SICHACA LUIS ENRIQUE	faculty:"DEPARTAMENTO DE FORMACIÓN LASALLISTA"
