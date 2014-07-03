require 'csv'

def students
	@students ||= [{ name: 'Mihai', cohort: 'January', age: "23"}]
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






def student_to_csv(etudiantes)
	student.values
end


def save(file)
	CSV.open("./students.csv", "wb") do |csv|
		students.each {|student| csv << student_to_csv(student)}
end
end


		# 	loaded_file = CSV.read("example.csv")
		# 	students = []
		# 	loaded_file.each do |row|
		# 	name, cohort, age = row[0], row[1], row[2]
		# 	students << {name: name, cohort: cohort, age: age}
		# end
	
			@students = []

		def loadfile
			CSV.read("example.csv")
			end

			def readfile
			loaded_file = loadfile
			loaded_file.each do |row|
			name, cohort, age = row[0], row[1], row[2]
			@students << {name: name, cohort: cohort, age: age}
			@students
		end
	end
		




# def is_cohort_valid?(string)
# 	Date::MONTHNAMES.compact.include?(string.downcase.capitalize)
# end

def display_the(students)
	students.each {|student| puts "#{student[:name]} from the #{student[:cohort]} cohort is #{student[:age]}"}
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


