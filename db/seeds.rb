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
  { type_name:"Asistencia Técnica", type_code: "1"},
  { type_name:"Coloquio", type_code: "1"},
  { type_name:"Conferencia", type_code: "1"},
  { type_name:"Congreso", type_code: "1"},
  { type_name:"Consultoría", type_code: "1"},
  { type_name:"Curso libre", type_code: "1"},
  { type_name:"Diplomado", type_code: "1"},
  { type_name:"Foro", type_code: "1"},
  { type_name:"Interventoría", type_code: "1"},
  { type_name:"Mesa redonda", type_code: "1"},
  { type_name:"Seminario", type_code: "1"},
  { type_name:"Simposio", type_code: "1"},
  { type_name:"Taller", type_code: "1"},
  { type_name:"Presentación Artística", type_code: "1"},
  { type_name:"Exposición Artística", type_code: "1"},
  { type_name:"Acto Cultural", type_code: "1"},
  { type_name:"Reunión", type_code: "1"},
  { type_name:"Acción Social", type_code: "1"},
  { type_name:"Ensayo", type_code: "1"},
  { type_name:"Intervención", type_code: "1"}
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