
#build a Ruby program that asks the user for the following pieces of data about the hamster and stores them in variables:



#hamster's name (the clerk names any hamsters who come in without name tags, so all hamsters have names)
#volume level from 1 to 10 (some people are light sleepers who won't adopt extra-squeaky hamsters)
#fur color
#whether the hamster is a good candidate for adoption
#estimated age

puts "what is the hamsters name?"
hamster_name = gets.chomp.capitalize

puts "what is the hamsters volume level from a scale of 1 to 10?"
volume_level = gets.chomp.to_i

puts "what is the hamsters fur color?"
fur_color = gets.chomp

puts "is the hamster a good candidate for adoption"
adoption_opinion = gets.chomp

puts "what is the hamsters estimated age?"
estimated_age = gets.chomp.to_i

if estimated_age == " "
 estimated_age = nil
end

puts "Your hamster's name is #{hamster_name}."
puts "Your hamster's volume is #{volume_level}"
puts "Your hamster's color is #{fur_color}"
puts "Your hamster's adoption status is #{adoption_opinion}"
puts "Your hamster's estimated age is #{estimated_age}"















