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
    {campus_name:"Candelaria", campus_name:"CAN"},
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

Place.create!()

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
