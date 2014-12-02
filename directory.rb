#lets put our students into an array
students = [
"Kieran Goodacre",
"Emily Sas",
"India Dearlove",
"Jacob Mitchinson",
"Marc Inwal",
"Andy Newman",
"Richard Ighodaro",
"Sanda Golcea",
"Ptolemy Barnes",
"Steph Oldcorn",
"Huy Le",
"Marcus de Wilde",
"Matteo Manzo",
"Luke Clewlow",
"Oliver Lucas",
"Jack Rubio",
"David Blake",
"Charlie Walsh",
"Jin Dai",
"Gus Powell",
"Jake Alvarez",
"Hannah Carney",
"Bibiana Cristofol"
]
#then we print a list of them
puts "The students of my cohort at Makers Academy"
puts "-------------------------------------------"
students.each do |student|
	puts student
end
#finally we print a total
puts "Overall we have #{students.length} great students"