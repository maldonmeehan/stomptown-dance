###Phase one

####courses
name
number
(has_many sections)

####sections
name
level
number
course_id
(has_many lessons)
(belongs_to courses)

####lessons
name
content
video
callers_notes
number
section_id
(belongs_to sections)

###Phase two

####dances
name
county
style
notes
(has_many instructions)

####instructions
title
figure
tune
bar_total
move
number
instruction
bars
call
(belongs_to dances)

####musics
tune
bars
title
artist
track  
track_title
