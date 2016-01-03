# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

1.times do
  level = 1
  indication = (('A'..'Z').to_a.sample)*((1..2).to_a.sample)
  SchoolClass.create(level: level, indication: indication)
end

1.times do
  level = 2
  indication = (('A'..'Z').to_a.sample)*((1..2).to_a.sample)
  SchoolClass.create(level: level, indication: indication)
end

1.times do
  level = 3
  indication = (('A'..'Z').to_a.sample)*((1..2).to_a.sample)
  SchoolClass.create(level: level, indication: indication)
end

60.times do
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  Student.create(first_name: first_name, last_name: last_name)
end