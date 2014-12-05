def print_header #was - needed _
  puts "The students of my cohort at Makers Academy" #was put, needed puts and ended in ' not "
  puts "-------------" # was `` instead of "
end

def print_students(students) #was just print changed to print_students
  students.each do |student| #parameter was in // should be ||
    puts "#{student[:name]} #{student[:cohort]} cohort" # was '' needs "" for string interpolation bracketing all wrong
  end
end

def print_footer(names) #names wasn't contained in (), needs it for parameter to be passed in
  puts "Overall, we have #{names.length} great students" #was prints, needed puts, needed # for string interpolation
end

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # create an empty array # commented with % rather than #
  students = [] # was {} should be [] for an empty array
  # get the first name # commented with % rather than #
  name = gets .chomp
  # while the name is not empty, repeat this code # commented with % rather than #
  while !name.empty? do # was when should be while, empty needed ? at end, also ! for not empty
    # add the student hash to the array # commented with % rather than #
    students << {:name => name, :cohort => :november} # was single < should be double for shovel operator   
    puts "Now we have #{students.length} students" # was student changed to students
    # get another name from the user # commented with % rather than #
    name = gets.chomp # was get should be gets
  end
  # return the array of students # commented with % rather than #
  students
end

students = input_students # was - should be _ to call method
if !students.empty?
print_header
print_students(students) # students was in {} should be print_students to reflect the method name and (students)
print_footer(students) # was in [] should be ()
else
  puts "you didn't enter any student names"
end