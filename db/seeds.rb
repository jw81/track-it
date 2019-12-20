# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


opponent_names = [
  'Minutemen (Lexington)',
  'Panthers (Oak Grove)',
  'Spartans (Richmond)',
  'Owls (Windsor)',
  'Bulldogs (Brookfield)',
  'Cardinals (Lawson)',
  'Mules (Lathrop)',
  'Owls (Marshall)'
]

puts "Creating #{opponent_names.count} Opponent records..."
opponent_names.each do |opponent_name|
  Opponent.create(name: opponent_name)
end
puts 'Finished creating Opponent records.'



locations = [
  { city: 'Higginsville', state: 'MO', description: 'High School Gym' },
  { city: 'Higginsville', state: 'MO', description: 'Middle School Gym' },
  { city: 'Oak Grove', state: 'MO', description: 'High School Gym' },
  { city: 'Marshall', state: 'MO', description: 'High School Gym' },
  { city: 'Lexington', state: 'MO', description: 'High School Gym' }
]

puts "Creating #{locations.count} Location records..."
locations.each do |location|
  Location.create(location)
end
puts 'Finished creating Location records.'
