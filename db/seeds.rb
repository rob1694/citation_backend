# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


e1 = Enforcer.create([{ name: 'Luke Gallows', badge_number: '123456'}])
e2 = Enforcer.create([{ name: 'Mike Mulanny', badge_number: '234567', }])

o1 = Offender.create([{ name: 'Missy Mercado' }])
o2 = Offender.create([{ name: 'Landon Davies' }])

c1 = Citation.create([{ enforcer_id: 1, offender_id: 1, violation: 'double parked', amount: 35, due_date: "10/30/2021", summons: false, summons_date: "" }])
