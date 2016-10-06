
course_list = [
  [ "Irish Set Dance", "Explore the most popular form of traditional social dancing in Ireland today. Sets are dance in square formation with intricate and rhythmic footwork. Learn to dance to reels, jigs, slides, polkas and hornpipes. This course is organized by county and will include the dance instructions, callers notes, battering steps and video." ],
  [ "Irish Ceili Dance", "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum" ],
  [ "Irish Sean-nos Dance", "Sean-nós literally meaning old-style is a highly improvisational, low to the ground, rhythmic dance form. Unlike Irish step dancers, Sean-nós dancers swing their hips and use their arms as forms of expressing the music. Traditionally a dancer danced solo on the hardwood of a half door or the round top of a barrel; as a result the steps are confined to a small space. In Sean-nós dance, the dancer is tied closely with the musician and the music. The dancer interprets the music." ],
  [ "Percussive Choreography", "This course will focus on improvisation, rhythmic footwork and performance techniques. It will draw from Cape Breton dance, Québécois, American Clogging, Sean-nós Dance, Irish Old Style Step dance, Waltz Clog and more." ],
  [ "Irish Brush Dance", "In this course we cover the basics of the traditional Irish brush dance. The brush dance is done with a brush or broom. There are many stories behind the brush dance. One story is that it was performed by the Travelers when they went from house to house selling items, including brushes(brooms). It is told that they would perform the dance and display the brush." ],
  [ "History of Irish Dance", "Explore the rich history of Irish dance. We will cover the history of Irish dance from the earliest records to the present. We will explore the individual dance genres: Céilí dance, Set Dance, Sean-nós dance, Old-style Traditional and Step Dance, as well as 'Riverdance'." ]
]

course_list.each do |name, description|
  Course.create( name: name, description: description )
end

section_list = [
  [ "Dances of Connemara", "Beginner", 1, 1 ],
  [ "Battering Steps for Connemara Set", "Intermediate", 2, 1 ],
  [ "Dances of Cork", "Beginner", 2, 1 ],
  [ "Dances of Clare", "Beginner", 1, 1 ],
  [ "Battering Steps for Clare Sets", "Intermediate", 2, 1 ],
  [ "Dances of Kerry", "Beginner", 1, 1 ],
  [ "Dances of Mayo", "Beginner", 1, 1 ],
  [ "Dances of Limerick", "Beginner", 1, 1 ],
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

lesson_list = [ "Jigs", "This is a beginner jig step.", "https://youtu.be/o4N0OpHyRxI", "Step shuffle down toe", 1, 3 ]

lesson_list.each do |name, content, video, callers_notes, number, section_id|
  Lesson.create( name: name, content: content, video: video, callers_notes: callers_notes, number: number, section_id: section_id )
end

dance_list = [
  [ "Connemara Set", "Galway", "Irish Set Dance", "First sides are on the right of first tops. This set can be danced with the Connemara battering step. Most moves are danced for 6 bars and dancers 'step it out' for the last 2 bars. The fourth figure is traditionally danced to the tune of 'Maggie in the Woods'." ],
  [ "Clare Plain Set", "Clare", "Irish Set Dance", "This set can be danced with several clare battering step, including dance at home steps and advance retire steps." ],
  [ "Ballyvourney Jig Set", "Cork", "Irish Set Dance", "Traditional danced as indivdual figures today all figures are danced as one dance." ]
]

dance_list.each do |name, county, style, note|
  Dance.create( name: name, county: county, style: style, note: note )
end

figure_list = [
# connemara
  ["First", "Ladies Chain", "Reels", 160, 1, 1, "<iframe width='560' height='315' src='https://www.youtube.com/embed/3R0vCMYtHDQ' frameborder='0' allowfullscreen></iframe>"],
  ["Second", "Back to Back", "Reels", 192, 2, 1, '<iframe width="560" height="315" src="https://www.youtube.com/embed/bXSHp2GmXVc" frameborder="0" allowfullscreen></iframe>'],
  ["Third", "Christmas", "Reels", 184, 3, 1, '<iframe width="560" height="315" src="https://www.youtube.com/embed/5-T870LmA28" frameborder="0" allowfullscreen></iframe>'],
  ["Fourth", "Maggie in the Woods", "Polka", 96, 4, 1, '<iframe width="560" height="315" src="https://www.youtube.com/embed/MjWuNDaLeGQ" frameborder="0" allowfullscreen></iframe>'],
# clare plain
  ["First", "Pass Through", "Reels", 112, 1, 2, '<iframe width="560" height="315" src="https://www.youtube.com/embed/pbNoM0oNJ0c" frameborder="0" allowfullscreen></iframe>'],
  ["Second", "Under the Wing", "Reels", 128, 2, 2, '<iframe width="560" height="315" src="https://www.youtube.com/embed/9DN_kIUtUio" frameborder="0" allowfullscreen></iframe>'],
  ["Third", "Chase the Ladies", "Reels", 176, 3, 2, '<iframe width="560" height="315" src="https://www.youtube.com/embed/IKzund8tmyw" frameborder="0" allowfullscreen></iframe>'],
  ["Fourth", "Three and One", "Reels", 256, 4, 2, '<iframe width="560" height="315" src="https://www.youtube.com/embed/4zKyiyT8-VE" frameborder="0" allowfullscreen></iframe>'],
  ["Fifth", "The Gallop", "Jigs", 160, 5, 2, '<iframe width="560" height="315" src="https://www.youtube.com/embed/WZ7g79-YtAM" frameborder="0" allowfullscreen></iframe>'],
  ["Sixth", "Ladies In", "Reels", 192, 6, 2, '<iframe width="560" height="315" src="https://www.youtube.com/embed/UMl3qVciqKM" frameborder="0" allowfullscreen></iframe>'],
# Ballyvourney
  ["First", "Swing Your Own", "Slides", 88, 1, 3, '<iframe width="560" height="315" src="https://www.youtube.com/embed/ehDHrBaYhPE" frameborder="0" allowfullscreen></iframe>'],
  ["Second", "Swing Your Opposite", "Slides", 104, 2, 3],
  ["Third", "Christmas", "Slides", 104, 3, 3],
  ["Fourth", "Swing All Around", "Slides", 136, 4, 3],
  ["Fifth", "Chain", "Slides", 112, 5, 3]
]

figure_list.each do |figure, title, tune, bar_total, number, dance_id, video|
  Figure.create( figure: figure, title: title, tune: tune, bar_total: bar_total, number: number, dance_id: dance_id, video: video )
end

instruction_list = [
  # connemara figure one
  [1, "All", "Lead Around", "Lead around anti-clockwise in cross hand hold (6 bars). Gents turn ladies clockwise (2 bars), and lead back to place (6 bars), face partner and step it (2 bars).", 16, 1],
  [2, "All", "Swing", "Swing in ceili hold (6 bars), face center and step it out (2 bars).", 8, 1],
  [3, "Tops", "Advance & Retire", "Advance & retire twice in cross hand hold", 8, 1],
  [4, "Tops", "House Around", "House around anit-clockwise in cross hand hold (6 bars) and step it out.", 8, 1],
  [5, "Tops", "Swing", "Swing (6 bars) and 'step it out' (2 bars).", 8, 1],
  [6, "Sides", "Advance & Retire", "Avance & retire twice", 8, 1],
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
  [19, "All", "Swing", "in ceili hold (6 bars), face center and 'step it out' (2 bars).", 8, 1],
  # connemara figure Two
  [1, "All", "Lead Around/Lead Back", "All couples in crossed hand hold lead around anti-clockwise (6 bars). Dancers turn clockwise, the ladies under both raised arms (2 bars), and couples lead back to place (6 bars), face each other and 'step it out' (2 bars).", 16,2],
  [2, "All", "Swing", "All couples in ceili hold (6 bars), face center and 'step it out' (2 bars).", 8,2],

  [3, "Tops", "Back to Back", "1st top gent and 2nd top lady dance past each other R to R (2 bars), pass each other back to back (2 bars), fall back to face each other (2 bars) and step it out (2 bars).", 8,2],
  [4, "Tops", "Swing", "The dancing couple swing, falling back to their own positions on the last 2 bars.", 8,2],
  [5, "Tops", "Advance & Retire", "in crossed hand hold advance & retire twice", 8, 2],
  [6, "Tops", "House Around", "in crossed hand hold house around anit-clockwise (6 bars) and 'step it out'.", 8, 2],
  [7, "Tops", "Swing", "in ceili hold (6 bars), face center and 'step it out' (2 bars).", 8,2],

  [8, "Sides", "Back to Back", "1st side gent and 2nd side lady dance past each other R to R (2 bars), pass each other back to back (2 bars), fall back to face each other (2 bars) and step it out (2 bars).", 8,2],
  [8, "Sides", "Swing", "The dancing couple swing, falling back to their own positions on the last 2 bars.", 8,2],
  [9, "Sides", "House Around", "in crossed hand hold house around anit-clockwise (6 bars) and 'step it out'.", 8, 2],
  [10, "Sides", "Swing", "in ceili hold (6 bars), face center and 'step it out' (2 bars).", 8,2],

  [11, "Tops", "Back to Back", "2nd top gent and 1st top lady dance past each other R to R (2 bars), pass each other back to back (2 bars), fall back to face each other (2 bars) and step it out (2 bars).", 8,2],
  [12, "Tops", "Swing", "The dancing couple swing, falling back to their own positions on the last 2 bars.", 8,2],
  [13, "Tops", "Advance & Retire", "in crossed hand hold advance & retire twice", 8, 2],
  [14, "Tops", "House Around", "in crossed hand hold house around anit-clockwise (6 bars) and 'step it out'.", 8, 2],
  [15, "Tops", "Swing", "in ceili hold (6 bars), face center and 'step it out' (2 bars).", 8,2],

  [16, "Sides", "Back to Back", "2nd side gent and 1st side lady dance past each other R to R (2 bars), pass each other back to back (2 bars), fall back to face each other (2 bars) and step it out (2 bars).", 8,2],
  [17, "Sides", "Swing", "The dancing couple swing, falling back to their own positions on the last 2 bars.", 8,2],
  [18, "Sides", "House Around", "in crossed hand hold house around anit-clockwise (6 bars) and 'step it out'.", 8, 2],
  [19, "All", "Swing", "in ceili hold (6 bars), face center and 'step it out' (2 bars).", 8,2],

  # connemara figure Three
  [1, "All", "Circle", "All couples holding hand advance and retire twice, dancers turning to face their partner and step it out as they retire for the second time.", 8, 3],
  [2, "All", "Swing", "All couples in ceili hold (6 bars), face center and 'step it out' (2 bars).", 8, 3],

  [3, "1st Tops", "Advance & Retire", "Open waltz hold, tops, advance and retire (4 bars), advance again, turn outwards 1 turn, face eachother and step it out in the center (4 bars).", 8, 3],
  [4, "1st Tops", "Swing", "1st tops in ceili hold (6 bars), face center and 'step it out' (2 bars). On the last two bars 2nd top couple dances in to join them in the centre.", 8, 3],
  [5, "Tops", "Christmas", "All four swing in a basket hold falling back to place on the last 2 bars.", 8, 3],
  [6, "Ladies", "Chain", "R hands in the centre and L to opposite gent who turns her clockwise underarm and dances anti-clockwise a ½ turn (4 bars).  Ladies pass back R to R while gents dance ¾ turn clockwise to face their partners and step it out (4 bars).", 8, 3],
  [7, "Tops", "Swing", "in ceili hold (6 bars), face center and 'step it out' (2 bars).", 8, 3],

  [8, "1st Sides", "Advance & Retire", "Advance and retire with waist hold (4 bars), drop hands and advance again each turning outwards 1 turn, face eachother and step it out (4 bars).", 8, 3],
  [9, "1st Sides", "Swing", "1st top couple in ceili hold (6 bars), face center and 'step it out' (2 bars). On the last two bars 2nd top couple dances in to join them in the centre.", 8, 3],
  [10, "Sides", "Christmas", "All four swing in a basket hold falling back to place on the last 2 bars.", 8, 3],
  [11, "Ladies", "Chain", "R hands in the centre and L to opposite gent who turns her clockwise underarm and dances anti-clockwise a ½ turn (4 bars).  Ladies pass back R to R while gents dance ¾ turn clockwise to face their partners and step it out (4 bars).", 8, 3],
  [12, "Sides", "Swing", "in ceili hold (6 bars), face center and 'step it out' (2 bars).", 8, 3],

  [13, "2nd Tops", "Advance & Retire", "Open waltz hold, tops, advance and retire (4 bars), advance again, turn outwards 1 turn, face eachother and step it out in the center (4 bars).", 8, 3],
  [14, "2nd Tops", "Swing", "in ceili hold (6 bars), face center and 'step it out' (2 bars). On the last two bars 1st tops join them.", 8, 3],
  [15, "Tops", "Christmas", "All four swing in a basket hold falling back to place on the last 2 bars.", 8, 3],
  [16, "Ladies", "Chain", "R hands in the centre and L to opposite gent who turns her clockwise underarm and dances anti-clockwise a ½ turn (4 bars).  Ladies pass back R to R while gents dance ¾ turn clockwise to face their partners and step it out (4 bars).", 8, 3],
  [17, "Tops", "Swing", "in ceili hold (6 bars), face center and 'step it out' (2 bars).", 8, 3],

  [18, "2nd Sides", "Advance & Retire", "Advance and retire with waist hold (4 bars), drop hands and advance again each turning outwards 1 turn, face eachother and step it out (4 bars).", 8, 3],
  [19, "2nd Sidess", "Swing", "1st top couple in ceili hold (6 bars), face center and 'step it out' (2 bars). On the last two bars 1st sides join them for the christmas.", 8, 3],
  [20, "Sides", "Christmas", "All four swing in a basket hold falling back to place on the last 2 bars.", 8, 3],
  [21, "Ladies", "Chain", "R hands in the centre and L to opposite gent who turns her clockwise underarm and dances anti-clockwise a ½ turn (4 bars).  Ladies pass back R to R while gents dance ¾ turn clockwise to face their partners and step it out (4 bars).", 8, 3],
  [22, "All", "Swing to finish", "in ceili hold (6 bars), face center and 'step it out' (2 bars).", 8, 3],
  # connemara figure Four
  [1, "All", "Circle", "All couples holding hand advance and retire twice, dancers turning to face their partner and step it out as they retire for the second time.", 8, 4],
  [2, "All", "Dance at Home", "in waltz hold dance two rotations at home.", 8, 4],
  [3, "All", "Circle", "advance and retire, advance and gents bring the lady on their left into waltz hold", 8, 4],
  [4, "All", "Dance 1/4 on", "in waltz hold dance one rotations at home, and move a quarter on the set. Gents should be 1/4 way around, ladies 1/2 way from home.", 8, 4],
  [3, "All", "Circle", "advance and retire, advance and gents bring the lady on their left into waltz hold", 8, 4],
  [4, "All", "Dance 1/4 on", "in waltz hold dance one rotations at home, and move a quarter on the set.", 8, 4],
  [5, "All", "Circle", "advance and retire, advance and bring the next lady over.", 8, 4],
  [6, "All", "Dance 1/4 on", "in waltz hold dance one rotations at home, and move a quarter on the set.", 8, 4],
  [5, "All", "Circle", "advance and retire, advance and bring the next lady over.", 8, 4],
  [6, "All", "Dance home", "in waltz hold dance one rotations on the spot, and dance home.", 8, 4],

  # clare plain set figure one
  [1, "All", "Lead Around", "Lead around anti-clockwise in cross hand hold (6 bars). Gents turn ladies clockwise (2 bars)", 8, 5],
  [2, "All", "Dance at Home", "In waltz hold, dance at home turning twice.", 8, 5],
  [3, "Tops", "Pass Through", "Pass through right to right, right hand turn the lady to face into the set, pass back right to right, right hand turn the lady into waltz hold", 8, 5],
  [4, "Tops", "Dance at Home", "In waltz hold, dance at home turning twice.", 8, 5],
  [5, "Sides", "Pass Through", "Pass through right to right, right hand turn the lady to face into the set, pass back right to right, right hand turn the lady into waltz hold", 8, 5],
  [6, "Sides", "Dance at Home", "In waltz hold, dance at home turning twice.", 8, 5],
  [7, "All", "Dance at Home", "In waltz hold, dance at home turning twice.", 8, 5],
  [8, "All", "House Around", "House around to finish", 8, 5],
  # clare plain set figure two
  [1, "All", "Lead Around", "Lead around anti-clockwise in cross hand hold (6 bars). Gents turn ladies clockwise (2 bars)", 8, 6],
  [2, "All", "Dance at Home", "In waltz hold, dance at home turning twice.", 8, 6],
  [3, "Tops", "Under the Wing", "Advance, retire (4 bars), R hand in R, and turn across to the opposite place, gents passing each other L to L behind their partners while the ladies turn 1½ turns clockwise under R arm to face centre (4 bars). The movement is then repeated back to place.", 8, 6],
  [4, "Tops", "Dance at Home", "In waltz hold, dance at home turning twice.", 8, 6],
  [5, "Tops", "Under the Wing", "Advance, retire (4 bars), R hand in R, and turn across to the opposite place, gents passing each other L to L behind their partners while the ladies turn 1½ turns clockwise under R arm to face centre (4 bars). The movement is then repeated back to place.", 8, 6],
  [6, "All", "Dance at Home", "In waltz hold, dance at home turning twice.", 8, 6],
  [7, "Sides", "Under the Wing", "Advance, retire (4 bars), R hand in R, and turn across to the opposite place, gents passing each other L to L behind their partners while the ladies turn 1½ turns clockwise under R arm to face centre (4 bars). The movement is then repeated back to place.", 8, 6],
  [8, "Sides", "Dance at Home", "In waltz hold, dance at home turning twice.", 8, 6],
  [9, "Sides", "Under the Wing", "Advance, retire (4 bars), R hand in R, and turn across to the opposite place, gents passing each other L to L behind their partners while the ladies turn 1½ turns clockwise under R arm to face centre (4 bars). The movement is then repeated back to place.", 8, 6],
  [10, "All", "Dance at Home", "In waltz hold, dance at home turning twice.", 8, 6],
  [11, "All", "House Around", "House around to finish", 8, 6],

  # clare plain set figure Three
  [1, "All", "Lead Around", "Lead around anti-clockwise in cross hand hold (6 bars). Gents turn ladies clockwise (2 bars)", 8, 7],
  [2, "All", "Dance at Home", "In waltz hold, dance at home turning twice.", 8, 7],
  [3, "Top Ladies", "Cross & Dance at Home", "to opposite gents (2 bars) and new couples dance in place, turning once.", 8, 7],
  [4, "Top Gents", "Cross & Turn Ladies", "gents cross to their partners' R side (2 bars), take R hands and turn them 1 turn anti-clockwise underarm (2 bars). Take L hands and gents dance anti-clockwise round to the correct side of the ladies while ladies dance 2 turns clockwise under arm in place. Finishing facing centre with crossed hand hold in front (4 bars).", 8, 7],
  [5, "Tops", "Advance & Retire", "Advance and retire twice.", 8, 7],
  [6, "Tops", "Slide the side & half house home", "partners take waltz hold and slide towards the couple on their R and back (4 bars) and house back home.", 8, 7],
  [7, "Top Ladies", "Cross & Dance at Home", "to opposite gents (2 bars) and new couples dance in place, turning once.", 8, 7],
  [8, "Top Gents", "Cross & Turn Ladies", "gents cross to their partners' R side (2 bars), take R hands and turn them 1 turn anti-clockwise underarm (2 bars). Take L hands and gents dance anti-clockwise round to the correct side of the ladies while ladies dance 2 turns clockwise under arm in place. Finishing facing centre with crossed hand hold in front (4 bars).", 8, 7],
  [9, "Tops", "Advance & Retire", "Advance and retire twice.", 8, 7],
  [10, "Tops", "Slide the side & half house home", "partners take waltz hold and slide towards the couple on their R and back (4 bars) and house back home.", 8, 7],
  [11, "All", "Dance at Home", "In waltz hold, dance at home turning twice.", 8, 7],
  [12, "Side Ladies", "Cross & Dance at Home", "to opposite gents (2 bars) and new couples dance in place, turning once.", 8, 7],
  [13, "Side Gents", "Cross & Turn Ladies", "gents cross to their partners' R side (2 bars), take R hands and turn them 1 turn anti-clockwise underarm (2 bars). Take L hands and gents dance anti-clockwise round to the correct side of the ladies while ladies dance 2 turns clockwise under arm in place. Finishing facing centre with crossed hand hold in front (4 bars).", 8, 7],
  [14, "Sides", "Advance & Retire", "Advance and retire twice.", 8, 7],
  [15, "Sides", "Slide the side & half house home", "partners take waltz hold and slide towards the couple on their R and back (4 bars) and house back home.", 8, 7],
  [16, "Side Ladies", "Cross & Dance at Home", "to opposite gents (2 bars) and new couples dance in place, turning once.", 8, 7],
  [17, "Side Gents", "Cross & Turn Ladies", "gents cross to their partners' R side (2 bars), take R hands and turn them 1 turn anti-clockwise underarm (2 bars). Take L hands and gents dance anti-clockwise round to the correct side of the ladies while ladies dance 2 turns clockwise under arm in place. Finishing facing centre with crossed hand hold in front (4 bars).", 8, 7],
  [18, "Sides", "Advance & Retire", "Advance and retire twice.", 8, 7],
  [19, "Sides", "Slide the side & half house home", "partners take waltz hold and slide towards the couple on their R and back (4 bars) and house back home.", 8, 7],
  [20, "All", "Dance at Home", "In waltz hold, dance at home turning twice.", 8, 7],
  [21, "All", "House Around", "House around to finish", 8, 7],

  # clare plain set figure four
  [1, "All", "Lead Around", "Lead around anti-clockwise in cross hand hold (6 bars). Gents turn ladies clockwise (2 bars)", 8, 8],
  [2, "All", "Dance at Home", "In waltz hold, dance at home turning twice.", 8, 8],
  [3, "Top", "Ladies Chain", "Right Hand in the center, left with the opposite, no chain on the way back, right hand turn with your partner", 8, 8],
  [4, "Tops", "Dance at Home", "In waltz hold, dance at home turning twice.", 8, 8],
  [5, "Tops", "House Over", "First top couple house inside the set, ending with the lady alongside the 2nd gent on the 7th bar. 1st gen takes inside hands of both ladies while 2nd gent takes outside hands. Note that the inside hands must be underneath.", 8, 8],
  [6, "Tops", "Plough", "The formation retires, advances and retires followed by the gen turning the ladies under with the two ladies ending beside the first gent. Repeat, ending in a circle of four or little christmas.", 16, 8],
  [7, "Tops", "Christmas", "Swing in four retiring to home after 6 bars", 8, 8],
  [8, "Tops", "Ladies Chain", "", 8, 8],
  [9, "Tops", "Dance at Home", "In waltz hold, dance at home turning twice.", 8, 8],
  [10, "Tops", "House Over", "First top couple house inside the set, ending with the lady alongside the 2nd gent on the 7th bar. 1st gen takes inside hands of both ladies while 2nd gent takes outside hands. Note that the inside hands must be underneath.", 8, 8],
  [11, "Tops", "Plough", "The formation retires, advances and retires followed by the gen turning the ladies under with the two ladies ending beside the first gent. Repeat, ending in a circle of four or little christmas.", 16, 8],
  [12, "Tops", "Christmas", "Swing in four retiring to home after 6 bars", 8, 8],
  [13, "Tops", "Ladies Chain", "", 8, 8],
  [14, "All", "Dance at Home", "In waltz hold, dance at home turning twice.", 8, 8],
  [15, "Side", "Ladies Chain", "Right Hand in the center, left with the opposite, no chain on the way back, right hand turn with your partner", 8, 8],
  [16, "Sides", "Dance at Home", "In waltz hold, dance at home turning twice.", 8, 8],
  [17, "Sides", "House Over", "First top couple house inside the set, ending with the lady alongside the 2nd gent on the 7th bar. 1st gen takes inside hands of both ladies while 2nd gent takes outside hands. Note that the inside hands must be underneath.", 8, 8],
  [18, "Sides", "Plough", "The formation retires, advances and retires followed by the gen turning the ladies under with the two ladies ending beside the first gent. Repeat, ending in a circle of four or little christmas.", 16, 8],
  [19, "Sides", "Christmas", "Swing in four retiring to home after 6 bars", 8, 8],
  [20, "Sides", "Ladies Chain", "", 8, 8],
  [21, "Sides", "Dance at Home", "In waltz hold, dance at home turning twice.", 8, 8],
  [22, "Sides", "House Over", "First top couple house inside the set, ending with the lady alongside the 2nd gent on the 7th bar. 1st gen takes inside hands of both ladies while 2nd gent takes outside hands. Note that the inside hands must be underneath.", 8, 8],
  [23, "Sides", "Plough", "The formation retires, advances and retires followed by the gen turning the ladies under with the two ladies ending beside the first gent. Repeat, ending in a circle of four or little christmas.", 16, 8],
  [24, "Sides", "Christmas", "Swing in four retiring to home after 6 bars", 8, 8],
  [25, "Sides", "Ladies Chain", "", 8, 8],
  [26, "All", "Dance at Home", "In waltz hold, dance at home turning twice.", 8, 8],
  [27, "All", "House Around", "House around to finish", 8, 7],
  # clare plain set figure five
  [1, "All", "Lead Around", "Lead around anti-clockwise in cross hand hold (6 bars). Gents turn ladies clockwise (2 bars)", 8, 9],
  [2, "All", "Swing", "Waltz hold swing", 8, 9],
  [3, "All", "House", "", 8, 9],
  [4, "All", "Gallop", "In waltz hold sidestep across the set, gents passing back to back with hop 1234567 in 2 bars. Side couples gallop. (2 bars) Top couples gallop back to place, ladies back to back. Side couples gallop back to place, ladies back to back.", 16, 9],
  [5, "All", "Gallop", "Top ladies take right hands in the centre and chain to the opposite gent. As they reach the centre, side ladies begin the same movement. All ladies give left hand to the opposite gent and turn clockwise under his arm as he dances anti-clockwise around them, all turning at the same time. Ladies dance on to the gent right of the place they chained from, giving right hand and turning once anti-clockwise under his arm and into waltz hold", 8, 9],
  [6, "All", "Swing", "Waltz hold swing", 8, 9],
  [7, "All", "Repeat", "house, gallop, chain, swing until home", 96, 9],
  [8, "All", "House Around", "House around to finish", 8, 7],

  # clare plain set figure six
  [1, "All", "Lead Around", "Lead around anti-clockwise in cross hand hold (6 bars). Gents turn ladies clockwise (2 bars)", 8, 10],
  [2, "All", "Dance at Home", "", 8, 10],
  [3, "All", "House", "", 8, 10],
  [4, "Ladies", "Advance & Retire", "Advance & retire to the center twice ", 8, 10],
  [5, "Gents", "Star right", "Gents take right hands in the centre and wheel half way around the set, turn on bar 5 and wheel left hands back to place. On the last 4 bars, the ladies dance around to the next place on their right and face the new gent in waltz hold.", 8, 10],
  [6, "All", "Dance at Home", "", 8, 10],
  [7, "All", "House", "", 8, 10],
  [8, "Ladies", "Advance & Retire", "Advance & retire to the center twice ", 8, 10],
  [9, "Gents", "Star left", "Gents take left hands in the centre and wheel half way around the set, turn on bar 5 and wheel right hands back to place. On the last 4 bars, the ladies dance around to the next place on their right and face the new gent in waltz hold.", 8, 10],
  [10, "All", "Dance at Home", "", 8, 10],
  [11, "All", "House", "", 8, 10],
  [12, "Ladies", "Advance & Retire", "Advance & retire to the center twice ", 8, 10],
  [13, "Gents", "Star right", "Gents take right hands in the centre and wheel half way around the set, turn on bar 5 and wheel left hands back to place. On the last 4 bars, the ladies dance around to the next place on their right and face the new gent in waltz hold.", 8, 10],
  [14, "All", "Dance at Home", "", 8, 10],
  [15, "All", "House", "", 8, 10],
  [16, "Ladies", "Advance & Retire", "Advance & retire to the center twice ", 8, 10],
  [17, "Gents", "Star left", "Gents take left hands in the centre and wheel half way around the set, turn on bar 5 and wheel right hands back to place. On the last 4 bars, the ladies dance around to the next place on their right and face the new gent in waltz hold.", 8, 10],
  [18, "All", "Dance at Home", "", 8, 10],
  [19, "All", "House", "in waltz hold, dance 2 seting step and house around", 8, 10],
  # Ballyvourney figure one
  [1, "Tops", "House", "in waltz hold, dance 2 seting step and house around", 8, 11],
  [2, "Tops", "Square the House", "In waltz hold, slide slide the couple on the right, poviot slide, 123 to oposite, House half-way, repeat all back to home.", 8, 11],
  [3, "Tops", "Swing", "in waltz hold swing your partner", 8, 11],
  [4, "Tops", "Slide and Change", "In waltz hold slide in (1, 2, 123) and back, House half-way, repeat all back to home.", 16, 11],
  [5, "Sides", "House", "in waltz hold, dance 2 seting step and house around", 8, 11],
  [6, "Sides", "Square the House", "In waltz hold, slide slide the couple on the right, poviot slide, 123 to oposite, House half-way, repeat all back to home.", 8, 11],
  [7, "Sides", "Swing", "in waltz hold swing your partner", 8, 11],
  [8, "Sides", "Slide and Change", "In waltz hold slide in (1, 2, 123) and back, House half-way, repeat all back to home.", 16, 11],

  # Ballyvourney figure Two
  [1, "Tops", "House", "in waltz hold, dance 2 seting step and house around", 8, 12],
  [2, "Tops", "Square the House", "In waltz hold, slide slide the couple on the right, poviot slide, 123 to oposite, House half-way, repeat all back to home.", 8, 12],
  [3, "Top", "Gents Cross & Swing", "Gents dance 2 bars to opposite lady & swing. Gents return home & swing partners.", 8, 12],
  [3, "Tops", "Swing", "in waltz hold swing your partner", 8, 12],
  [4, "Tops", "Slide and Change", "In waltz hold slide in (1, 2, 123) and back, House half-way, repeat all back to home.", 16, 12],
  [5, "Sides", "House", "in waltz hold, dance 2 seting step and house around", 8, 12],
  [6, "Sides", "Square the House", "In waltz hold, slide slide the couple on the right, poviot slide, 123 to oposite, House half-way, repeat all back to home.", 8, 12],
  [7, "Side", "Gents Cross & Swing", "Gents dance 2 bars to opposite lady & swing. Gents return home & swing partners.", 8, 12],
  [8, "Sides", "Swing", "in waltz hold swing your partner", 8, 12],
  [9, "Sides", "Slide and Change", "In waltz hold slide in (1, 2, 123) and back, House half-way, repeat all back to home.", 16, 12],
  # Ballyvourney figure Three
  [1, "Tops", "House", "in waltz hold, dance 2 seting step and house around", 8, 13],
  [2, "Tops", "Square the House", "In waltz hold, slide slide the couple on the right, poviot slide, 123 to oposite, House half-way, repeat all back to home.", 8, 13],
  [3, "Tops", "Double Little Christams", "Swing in four for 8 bars, Jump, Keep swinging clockwise for 6 & retire home.", 8, 13],
  [4, "Tops", "Slide and Change", "In waltz hold slide in (1, 2, 123) and back, House half-way, repeat all back to home.", 16, 13],
  [5, "Sides", "House", "in waltz hold, dance 2 seting step and house around", 8, 13],
  [6, "Sides", "Square the House", "In waltz hold, slide slide the couple on the right, poviot slide, 123 to oposite, House half-way, repeat all back to home.", 8, 13],
  [7, "Sides", "Double Little Christams", "Swing in four for 8 bars, Jump, Keep swinging clockwise for 6 & retire home.", 8, 13],
  [8, "Sides", "Slide and Change", "In waltz hold slide in (1, 2, 123) and back, House half-way, repeat all back to home.", 16, 13],
  # Ballyvourney figure four
  [1, "Tops", "House", "in waltz hold, dance 2 seting step and house around", 8, 14],
  [2, "Tops", "Square the House", "In waltz hold, slide slide the couple on the right, poviot slide, 123 to oposite, House half-way, repeat all back to home.", 8, 14],
  [3, "Tops", "Swing all the ladies", "Gents dance to lady on his left & swing (8 bars). Move on & swing the next lady; repeat to home, End by swinging own partners.", 32, 14],
  [4, "Tops", "Slide and Change", "In waltz hold slide in (1, 2, 123) and back, House half-way, repeat all back to home.", 16, 14],
  [5, "Sides", "House", "in waltz hold, dance 2 seting step and house around", 8, 14],
  [6, "Sides", "Square the House", "In waltz hold, slide slide the couple on the right, poviot slide, 123 to oposite, House half-way, repeat all back to home.", 8, 14],
  [7, "Sides", "Swing all the ladies", "Gents dance to lady on his left & swing (8 bars). Move on & swing the next lady; repeat to home, End by swinging own partners.", 32, 14],
  [8, "Sides", "Slide and Change", "In waltz hold slide in (1, 2, 123) and back, House half-way, repeat all back to home.", 16, 14],
  # Ballyvourney figure five
  [1, "Tops", "House", "in waltz hold, dance 2 seting step and house around", 8, 15],
  [2, "Tops", "Square the House", "In waltz hold, slide slide the couple on the right, poviot slide, 123 to oposite, House half-way, repeat all back to home.", 8, 15],
  [3, "All", "Reverse Chain", "All face partners, take right arm, dance ½ turn around each other to face in the opposite direction. Gents face clockwise, ladies face counter-clockwise. All chain L hand, R hand etc. to meet partners in opposite place.", 8, 15],
  [4, "Tops", "Slide and Change", "In waltz hold slide in (1, 2, 123) and back, House half-way, repeat all back to home.", 16, 15],
  [5, "Sides", "House", "in waltz hold, dance 2 seting step and house around", 8, 15],
  [6, "Sides", "Square the House", "In waltz hold, slide slide the couple on the right, poviot slide, 123 to oposite, House half-way, repeat all back to home.", 8, 15],
  [7, "Sides", "Reverse Chain", "All face partners, take right arm, dance ½ turn around each other to face in the opposite direction. Gents face clockwise, ladies face counter-clockwise. All chain L hand, R hand etc. to meet partners in opposite place.", 8, 15],
  [8, "Sides", "Slide and Change", "In waltz hold slide in (1, 2, 123) and back, House half-way, repeat all back to home.", 16, 15],
  [9, "All", "House", "House around to finish", 8, 15],
]

instruction_list.each do |number, move, call, instruction, bars, figure_id|
  Instruction.create( number: number, move: move, call: call, instruction: instruction, bars: bars, figure_id: figure_id )
end
