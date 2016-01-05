# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

1.times do
  level = 1
  indication = (('A'..'Z').to_a.sample)
  indication << ('A'..'Z').to_a.sample if (1..2).to_a.sample > 1
  SchoolClass.create(level: level, indication: indication)
end

1.times do
  level = 2
  indication = (('A'..'Z').to_a.sample)
  indication << ('A'..'Z').to_a.sample if (1..2).to_a.sample > 1
  SchoolClass.create(level: level, indication: indication)
end

1.times do
  level = 3
  indication = (('A'..'Z').to_a.sample)
  indication << ('A'..'Z').to_a.sample if (1..2).to_a.sample > 1
  SchoolClass.create(level: level, indication: indication)
end

60.times do
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  class_id = SchoolClass.all.sample.id
  Student.create(first_name: first_name, last_name: last_name, school_class_id: class_id)
end

subjects = ["History",
            "Mathematics",
            "Physical Education",
            "Chemistry",
            "Biology",
            "Physics",
            "English",
            "Art",
            "Music"]

subjects.each do |s|
  Subject.create(name: s)
end

500.times do
  grade = (1..6).to_a.sample
  comment = "sample comment"
  subject_id = Subject.all.sample.id
  student_id = Student.all.sample.id
  Mark.create(grade: grade, comment: comment, subject_id: subject_id, student_id: student_id)
end
