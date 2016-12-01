def extras

end

def compiler
	puts "Welcome to the hotsheet code compiler!"
	puts "Please enter the building or development name:"
	name = gets.chomp
	if name.downcase == "quit" || name.downcase == "exit"
		abort("Thank you for using compiler!")
	else
		puts "Please enter the building address:"
		address = gets.chomp
		puts "Please enter the city in question:"
		city = gets.chomp
		puts "Do you need to change anything?"
		puts " "
		puts "#{name} - #{address} - #{city}"
		puts " "
		print ">"
		answer = gets.chomp
		answer = answer.downcase
		if answer == "yes"
			compiler
		else
			system('clear')
			puts " "
			puts " "
			puts "\[showcaseidx_custom name = \"#{name}\" restrict=\'address = \"#{address}\"\'\] "
			puts "EQ_city=#{city}, FL"
			puts "EQ_num_bedrooms=0"
			puts "EQ_num_full_bathrooms=0"
			puts "\[/showcaseidx_custom\]"
		end
		puts " "
		puts " "
		puts " "
		compiler
	end
end

compiler