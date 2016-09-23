# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

course_list = [ "Irish Set Dance", "Irish Ceili Dance", "Irish Sean-nos Dance", "Appalachian Clogging", "Cape Breton Step Dance", "Percussive Choreography", "Percussive Improvisation" ]

course_list.each do |name|
  Course.create( name: name )
end

section_list = [
  [ "Dances of Connemara", "Beginner", 1, 1 ],
  [ "Dances of Connemara", "Intermediate", 2, 1 ],
  [ "Dances of Connemara", "Advanced", 3, 1 ],
  [ "Dances of Cork", "Beginner", 1, 1 ],
  [ "Dances of Clare", "Beginner", 1, 1 ],
  [ "Dances of Kerry", "Beginner", 1, 1 ],
  [ "Dances of Mayo", "Beginner", 1, 1 ],
  [ "Dances of Limerick", "Beginner", 6, 1 ],
  [ "Line Dances", "Beginner", 1, 2 ],
  [ "Circle Dances", "Beginner", 1, 2 ],
  [ "Four Hands", "Intermediate", 1, 2 ],
  [ "Eight Hands", "Advanced", 1, 2 ],
  [ "Jigs", "Beginner", 1, 3 ],
  [ "Jigs", "Intermediate", 1, 3 ],
  [ "Jigs", "Advanced", 1, 3 ],
  [ "Reels", "Beginner", 1, 3 ],
  [ "Reels", "Intermediate", 1, 3 ],
  [ "Reels", "Advanced", 1, 3 ],
]

section_list.each do |name, level, number, course_id|
  Section.create( name: name, level: level, number: number, course_id: course_id )
end

# lesson_list = [ "Reels", "Learn this step......", "https://youtu.be/o4N0OpHyRxI", "Step shuffle down toe", 1, 3 ]
#
# lesson_list.each do |name, content, video, callers_notes, number, section_id|
#   Lesson.create( name: name, content: content, video: video, callers_notes: callers_notes, number: number, section_id: section_id )
# end

dance_list = [
  [ "Connemara Set", "Galway", "Irish Set Dance", "First sides are on the right of first tops. This set can be danced with the connemara battering step. Most moves are danced for 6 bars and dancers 'step it out' for the last 2 bars. The fourth figure is traditionally danced to the tune of 'Maggie in the Woods'." ],
  [ "Clare Plain Set", "Clare", "Irish Set Dance", "This set can be danced with several clare battering step, including dance at home steps and advance retire steps." ],
  [ "Ballyvourney Jig Set", "Cork", "Irish Set Dance", "Traditional danced as indivdual figures today all figures are danced as one dance." ]
]

dance_list.each do |name, county, style, note|
  Dance.create( name: name, county: county, style: style, note: note )
end

figure_list = [
# connemara
  ["First", "Ladies Chain", "Reels", 160, 1, 1],
  ["Second", "Back to Back", "Reels", 192, 2, 1],
  ["Third", "Christmas", "Reels", 184, 3, 1],
  ["Fourth", "Maggie in the Woods", "Polka", 96, 4, 1],
# clare plain
  ["First", "Pass Through", "Reels", 112, 1, 2],
  ["Second", "Under the Wing", "Reels", 128, 2, 2],
  ["Third", "Chase the Ladies", "Reels", 176, 3, 2],
  ["Fourth", "Three and One", "Reels", 256, 4, 2],
  ["Fifth", "The Gallop", "Jigs", 160, 5, 2],
  ["Sixth", "Ladies In", "Reels", 192, 6, 2],
# Ballyvourney
  ["First", "Swing Your Own", "Slides", 88, 1, 3],
  ["Second", "Swing Your Opposite", "Slides", 104, 2, 3],
  ["Third", "Christmas", "Slides", 104, 3, 3],
  ["Fourth", "Swing All Around", "Slides", 136, 4, 3],
  ["Fifth", "Chain", "Slides", 112, 5, 3]
]

figure_list.each do |figure, title, tune, bar_total, number, dance_id|
  Figure.create( figure: figure, title: title, tune: tune, bar_total: bar_total, number: number, dance_id: dance_id )
end

instruction_list = [
  [1, "All", "Lead Around/Lead Back", "All couples in crossed hand hold lead around anti-clockwise (6 bars).   Dancers turn clockwise, the ladies under both raised arms (2 bars), and couples lead back to place (6 bars), face each other and 'step it out' (2 bars).", 16, 1],
  [2, "All", "Swing", "All couples in ceili hold (6 bars), face center and 'step it out' (2 bars).", 8, 1],
  [3, "Tops", "Advance & Retire", "in crossed hand advance & retire twice", 8, 1],
  [4, "Tops", "House Around", "in crossed hand house around anit-clockwise (6 bars) and 'step it out'.", 8, 1],
  [5, "Tops", "Swing", "in ceili hold (6 bars), face center and 'step it out' (2 bars).", 8, 1],
  [6, "Sides", "Advance & Retire", "in crossed hand advance & retire twice", 8, 1],
  [7, "Sides", "House Around", "in crossed hand house around anit-clockwise (6 bars) and 'step it out'.", 8, 1],
  [8, "Sides", "Swing", "in ceili hold (6 bars), face center and 'step it out' (2 bars).", 8, 1],
  [9, "Tops", "Ladies Chain", "Ladies chain right hand in right in the centre, left around the opposite gent who turns her clockwise underarm and dances anti-clockwise a ½ turn (4 bars). Ladies pass back Right to Right while gents dance ¾ turn clockwise to face their partners and step it out (4 bars).", 8, 1],
  [10, "Tops", "Swing", "in ceili hold (6 bars), face center and 'step it out' (2 bars).", 8, 1],
  [11, "Sides", "Ladies Chain", "chain same as above", 8, 1],      [12, "Sides", "Swing", "in ceili hold (6 bars), face center and 'step it out' (2 bars).", 8, 1],
  [13, "Tops", "Advance & Retire", "in crossed hand advance & retire twice", 8, 1],
  [14, "Tops", "House Around", "in crossed hand house around anit-clockwise (6 bars) and 'step it out'.", 8, 1],
  [15, "Tops", "Swing", "in ceili hold (6 bars), face center and 'step it out' (2 bars).", 8, 1],
  [16, "Sides", "Advance & Retire", "in crossed hand advance & retire twice", 8, 1],
  [17, "Sides", "House Around", "in crossed hand house around anit-clockwise (6 bars) and 'step it out'.", 8, 1],
  [18, "Sides", "Swing", "in ceili hold (6 bars), face center and 'step it out' (2 bars).", 8, 1],
  [19, "All", "Swing", "in ceili hold (6 bars), face center and 'step it out' (2 bars).", 8, 1]
]


instruction_list.each do |number, move, call, instruction, bars, figure_id|
  Instruction.create( number: number, move: move, call: call, instruction: instruction, bars: bars, figure_id: figure_id )
end
