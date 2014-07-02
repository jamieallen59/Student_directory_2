require 'student_directory'
require 'csv'

describe 'student_directory' do
	before(:each) do 
		 	[
		{:name => "Dr. Hannibal Lecter", :cohort => :november, :age => "23"},
	  	{:name => "Darth Vader", :cohort => :november, :age => "23"},
	  	{:name => "Nurse Ratched", :cohort => :november, :age => "23"},
	  	{:name => "Michael Corleone", :cohort => :november, :age => "23"},
	  	{:name => "Alex De Large", :cohort => :november, :age => "23"},
	  	{:name => "The Alien", :cohort => :november, :age => "23"},
	  	{:name => "Terminator", :cohort => :november, :age => "23"},
	  	{:name => "Freddy Kruger", :cohort => :november, :age => "23"},
	  	{:name => "The Joker", :cohort => :november, :age => "23"}
	  				].each {|student| add_into_students(student)}
	end


	context 'Student Directory User Input' do
		
		it 'prompts the user to enter their name' do
			expect(self).to receive(:puts).with("Please enter your name below and press return")
			prompt_user_name_input
		end


		it 'takes the name input from user' do
			expect(self).to receive(:gets).and_return("Roi")
			name = get_user_input
			expect(self).to receive(:gets).and_return("June")
			cohort = get_user_input
			expect(self).to receive(:gets).and_return("23")
			age = get_user_input
			expect(create_student(name, cohort, age)).to eq ({name: "Roi", cohort: :June, age: "23"})
		end

		it 'populates students with user input' do
			roi = {name: "Roi",cohort: :June,age: "23"}
			add_into_students(roi)
			expect(students).to include roi 
		end

	end


	context "Saving to a file" do
		
		it 'Exports students to CSV' do
			etudiantes = {name: 'Roi', cohort: :June, age: "23"}
			expect(export_student_to_csv(etudiantes)).to eq ["Roi", :June, "23"]
		end

		it 'saves the csv file' do
			# hash = {name: 'Roi', cohort: :June, age: "23"}
			donnees = ["Roi", :June, "23"]
			expect(CSV).to receive(:open).with("./lib/file.csv", "wb")
			# expect(save).to receive(:<<).with(donnees)
			save(donnees)
		end

	end



	context "Returns students with" do
		
		it "Selects students when A is the first letter of their name" do
			expect(students_with_firstletter_a).to eq [{:name => "Alex De Large", :cohort => :november, age: "23"}]
		end

		# it 'selects students with names beginning with A, which have been inputted by the user' do
		# 	# create_student('Alfie Moon', :may)
		# 	# expect(students_with_firstletter_a).to eq [{:name => "Alex De Large", :cohort => :november}, {:name => 'Alfie Moon', :cohort => :may}]
		# end

		it "selects students with names longer than 16 characters" do
			expect(students_with_longnames).to eq [{name: "Dr. Hannibal Lecter", cohort: :november, age: "23"}]
		end
	
	end




	context "headers and footers" do
			
		it 'Writes out our header' do
			header = "Welcome to Student Directory"
			expect(self).to receive(:puts).with(header)
			print_header
		end

		it 'Writes out our footer' do
			footer = "Overall, there are now #{students.length} students in our class"
			expect(self).to receive(:puts).with(footer)
			print_footer
		end
	end


end





