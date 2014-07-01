def students
	@students ||= []
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

def add_into_students(student)
	students << student
end


def students_with_firstletter_a
	students.select { |student| student[:name].start_with?("A", "a") }
end

def students_with_longnames
	students.select { |student| student[:name].length > 16}
end


def export_student_to_csv(etudiantes)
	etudiantes.values
end








# def students
# 	students ||= [] # students = students || [] 
# end

def print_header
	puts 'Welcome to Student Directory'
end

def print_footer
	puts "Overall, there are now #{students.length} students in our class"
end



