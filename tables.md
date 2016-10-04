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

####dances
name
county
style
notes

####figures
title
figure
tune
bar_total
dance_id
number
(has_many instructions)

####instructions
figure
move
number
instruction
bars
call
figure_id
(belongs_to figure)

###Phase two
####musics
tune
bars
title
artist
track  
track_title
figure_id
