require 'csv'
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
		print_menu 
		process(STDIN.gets.chomp) 
	end
end

def print_menu
	puts "1. Input the students"
	puts "2. Show the students"
	puts "3. Save students to csv file"
	puts "4. Load students from csv file"
	puts "9. Exit"
end

def process(selection)
	case selection
		when "1" then input_students 
		when "2" then show_students 
		when "3" then save_students 
		when "4" then load_students 
		when "9" then exit
		else puts "I don't know what you mean, please try again."		
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
	capture_name
	while !@name.empty? do
	add_students(@name, cohort = "december")
	puts "You have entered #{@students.length} student names"
	capture_name
	end
	@students
end 

def capture_name
	@name = STDIN.gets.chomp
end

def get_filename
	filename = "students.csv"
	puts "What filename would you like to use"
	puts "just hit enter to use default of students.csv"
	user_filename = STDIN.gets.chomp
	if !user_filename.empty?
		filename = user_filename
	end
	filename
end

def load_students
	CSV.foreach(get_filename) do |line|
		@name = line[0]
		cohort = line[1]
		add_students(@name, cohort)
	end
end

def add_students(name, cohort)
	@students << {:name => @name, :cohort => cohort.to_sym}
end

def save_students
	CSV.open(get_filename, "wb") do |csv|
		@students.each do |student|
  		csv << [student[:name], student[:cohort]]
	end
end
end

try_load_students
interactive_menu