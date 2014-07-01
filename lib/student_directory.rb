def students
	@students = [
		{:name => "Dr. Hannibal Lecter", :cohort => :november, :age => "23"},
	  	{:name => "Darth Vader", :cohort => :november, :age => "23"},
	  	{:name => "Nurse Ratched", :cohort => :november, :age => "23"},
	  	{:name => "Michael Corleone", :cohort => :november, :age => "23"},
	  	{:name => "Alex De Large", :cohort => :november, :age => "23"},
	  	{:name => "The Alien", :cohort => :november, :age => "23"},
	  	{:name => "Terminator", :cohort => :november, :age => "23"},
	  	{:name => "Freddy Kruger", :cohort => :november, :age => "23"},
	  	{:name => "The Joker", :cohort => :november, :age => "23"}
	]
end

def prompt_user_name_input
	puts "Please enter your name below and press return"
end

def get_user_input
	gets.chomp
end

def create_student(name, cohort, age)
	{name: name, cohort: cohort.to_sym, age: age}
end

#-------------------------

def students_with_firstletter_a
	students.select { |student| student[:name].start_with?("A", "a") }
end

def students_with_longnames
	students.select { |student| student[:name].length > 16}
end








# def add_into_students(create_students)
# 	students << create_student(name, cohort)
# end


# def students
# 	students ||= [] # students = students || [] 
# end

def print_header
	puts 'Welcome to Student Directory'
end

def print_footer
	puts "Overall, there are now #{students.length} students in our class"
end





