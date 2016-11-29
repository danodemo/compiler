def compiler
	puts "Welcome to the hotsheet code compiler!"
	puts "Please enter the building or development name:"
	name = gets.chomp
	puts "#{name}"
	puts "Please enter the building address:"
	address = gets.chomp
	puts "Please enter the city in question:"
	city = gets.chomp
	puts "#{name} - #{address} - #{city}"
	puts "Do you need to add anymore information?"
	answer = gets.chomp
	if answer == "yes"
		puts "Please choose which info you need to add:"
		info = gets.chomp
	else
		puts "\[showcaseidx_custom_name = \"#{name}\" restrict=\'address = \"#{address}\"\'\] "
		puts "EQ_city=#{city}, FL"
		puts "EQ_num_bedrooms=0"
		puts "EQ_num_full_bathrooms=0"
		puts "\[/showcaseidx_custom\]"
	end
end

compiler