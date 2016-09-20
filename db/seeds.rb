# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

course_list = [ "Irish Sean-nos Dance", "Irish Ceili Dance", "Irish Set Dance", "Appalachian Clogging", "Cape Breton Step Dance", "Percussive Choreography", "Percussive Improvization" ]

course_list.each do |name|
  Course.create( name: name )
end

# section_list = [ "Reels", "Beginner", 1, 1 ]
#
# section_list.each do |name, level, number, course_id|
#   Course.create( name: name, level: level, number: number, course_id: course_id )
# end
#
