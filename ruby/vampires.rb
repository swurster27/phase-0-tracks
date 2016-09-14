puts "What is your name?"
name = gets.chomp

puts "how old are you and what year were you born"
input = gets.chomp

values = input.split(" ")
age = values[0]
year_born = values[1]
current_year = Time.now.year

if age + year_born == current_year
  age_right = true
else
  age_right = false
end

puts "Our cafeteria serves garlic bread. Should we get some for you?"
bread_response = gets.chomp

if bread_response.capitalize == "YES"
  wants_bread = true
else
  wants_bread = false
end

puts "Would you like to enroll in the company's health insurance?"
health_insurance_response = gets.chomp

if health_insurance_response.capitalize == "YES"
  wants_insurance = true
else
  wants_insurance = false
end

=begin
# If the employee got their age right, and is willing to eat garlic bread or sign up for insurance, the result is “Probably not a vampire.”
If the employee got their age wrong, and hates garlic bread or waives insurance, the result is “Probably a vampire.”
If the employee got their age wrong, hates garlic bread, and doesn’t want insurance, the result is “Almost certainly a vampire.”
Even if the employee is an amazing liar otherwise, anyone going by the name of “Drake Cula” or “Tu Fang” is clearly a vampire, because come on. In that case, you should print “Definitely a vampire.”
Otherwise, print “Results inconclusive.”
=end

if (age_right && (wants_bread || wants_insurance))
  puts "Probably not a Vampire"
elsif (!age_right && (!wants_bread || !wants_insurance))
  puts "probably a vampire"
elsif (!age_right && !wants_bread && !wants_insurance)
  puts "definiely a vampire"
elsif (name == "Drake Cula" || name =="Tu Fang")
  puts "definiely a vampire"
else
  puts "results inconclusive"
end
