@students = []

def try_load_students
	filename = ARGV.first # first argument passed from the command line
	return if filename.nil? # exits out of method if no argument passed
	if File.exists?(filename)
		load_students(filename)
		puts "Loaded #{@students.length} records from #{filename}"
	else
		puts "Sorry #{filename} doesn't exist."
		exit
	end
end

def interactive_menu
	loop do
		print_menu # 1. print the menu and ask for user input
		process(STDIN.gets.chomp) # 2. read the input invoke method process on the input
	end
end

def print_menu
	puts "1. Input the students"
	puts "2. Show the students"
	puts "3. Save students to students.csv"
	puts "4. Load students from students.csv"
	puts "9. Exit"
end

def process(selection)
	case selection
		when "1" # input the students
			input_students 
		when "2" # show the students
			show_students
		when "3" # save students
			save_students
		when "4" # load students
			load_students
		when "9"
			exit 
		else
			puts "I don't know what you mean, please try again."
	end
end

def show_students
	print_header
	print_students_list
	print_footer
end

def print_header
puts "The students of my cohort at Makers Academy"
puts "-------------------------------------------"	
end

def print_students_list
@students.each do |student|
	puts "#{student[:name]}, #{student[:cohort]} cohort"
	end	
end

def print_footer 
puts "Overall we have #{@students.length} great students"
end

def input_students
	puts "Please enter the names of the students"
	puts "To finish, just hit return twice!"
	name = STDIN.gets.chomp
	while !name.empty? do
	#add the student name in a hash within the array including cohort (hardcoded)
	@students << {:name => name, :cohort => :december}
	puts "You have entered #{@students.length} student names"
	#get next name from the user
	name = STDIN.gets.chomp
	end
	#return the array of students for use when method is called
	@students
end 

def load_students(filename = "students.csv")
	file = File.open(filename,"r")
	file.readlines.each do |line|
		name, cohort = line.chomp.split(",")
		@students << {:name => name, :cohort => cohort.to_sym}
	end
	file.close
end

def save_students
# open the file for writing students to
file = File.open("students.csv","w")
# iterate over the array of students
@students.each do |student|
	student_data = [student[:name], student[:cohort]]
	csv_line = student_data.join(",")
	file.puts csv_line
end
file.close
end

try_load_students
interactive_menu