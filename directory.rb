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
def print_header
puts "The students of my cohort at Makers Academy"
puts "-------------------------------------------"	
end

def print_names(names)
names.each do |name|
	puts name
	end	
end

def print_footer(names) 
puts "Overall we have #{names.length} great students"
end

#then we call the above methods
print_header
print_names(students)
print_footer(students)
