puts "how many employees will be processed today?"
total_employees = gets.chomp
total_employees = total_employees.to_i
number_of_employees = 0 

until number_of_employees == total_employees

p "what is your name (first name only)?"
name = gets.chomp

p "how old are you?"
age = gets.chomp
age = age.to_i


p "what year were you born (yyyy)?"
year = gets.chomp
year = year.to_i 

p "would you like some garlic bread? yes or no?"
bread = gets.chomp

p "would you like health insurance? yes or no?"
health = gets.chomp

correct_age = true;
if 2016 - year != age
  correct_age = false 
end

results = "Results inconclusive";

	if correct_age && (bread == "yes" || health == "yes")
		results = "Probably not a vampire"
	end

	if correct_age == false && (bread == "no" || health == "no")
		results = "Probably a vampire"
	end

	if correct_age == false && bread == "no" && health == "no"
		results = "Almost certainly a vampire."
	end

	if name == "Drake Cula" || name == "Tu Fang"
		results = "Definitely a vampire."
	end


	allergy = true
	while allergy
		answer = gets.chomp
		if answer == "sunshine"
			results = "Probably a vampire."
			allergy = false;
		elsif answer == "done"
			allergy = false;
		end
	end


	puts "#{results}"
	number_of_employees += 1
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."