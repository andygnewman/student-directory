#lets put our students into an array
students = [
{:name => "Kieran Goodacre", :cohort => :december},
{:name => "Emily Sas", :cohort => :december},
{:name => "India Dearlove", :cohort => :december},
{:name => "Jacob Mitchinson", :cohort => :december},
{:name => "Marc Inwal", :cohort => :december},
{:name => "Andy Newman", :cohort => :december},
{:name => "Richard Ighodaro", :cohort => :december},
{:name => "Sanda Golcea", :cohort => :december},
{:name => "Ptolemy Barnes", :cohort => :december},
{:name => "Steph Oldcorn", :cohort => :december},
{:name => "Huy Le", :cohort => :december},
{:name => "Marcus de Wilde", :cohort => :december},
{:name => "Matteo Manzo", :cohort => :december},
{:name => "Luke Clewlow", :cohort => :december},
{:name => "Oliver Lucas", :cohort => :december},
{:name => "Jack Rubio", :cohort => :december},
{:name => "David Blake", :cohort => :december},
{:name => "Charlie Walsh", :cohort => :december},
{:name => "Jin Dai", :cohort => :december},
{:name => "Gus Powell", :cohort => :december},
{:name => "Jake Alvarez", :cohort => :december},
{:name => "Hannah Carney", :cohort => :december},
{:name => "Bibiana Cristofol", :cohort => :december}
]
def print_header
puts "The students of my cohort at Makers Academy"
puts "-------------------------------------------"	
end

def print_names(students)
students.each do |student|
	puts "#{student[:name]}, #{student[:cohort]} cohort"
	end	
end

def print_footer(students) 
puts "Overall we have #{students.length} great students"
end

#then we call the above methods
print_header
print_names(students)
print_footer(students)
