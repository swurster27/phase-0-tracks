=begin
#At the beginning of your program, ask the user how many employees will be processed, then begin the survey process for the first employee. After you print the result for that employee, start the survey over again, and repeat until all the employees have been processed.

(Hmm, doing things over and over again ... that certainly sounds like a loop, doesn't it?)
=end
#break statment/ keep in mind


puts "how many employees will be processed?"
num_employees = Integer(gets.chomp)
num_loops = 0

while num_loops < num_employees


  puts "What is your name?"
  name = gets.chomp

  puts "how old are you and what year were you born"
  input = gets.chomp

  values = input.split(" ")
  age = Integer(values[0])
  year_born = Integer(values[1])
  current_year = Integer(Time.now.year)

  if age + year_born == current_year
    age_right = true
  else
    age_right = false
  end

  puts "Our cafeteria serves garlic bread. Should we get some for you?"
  bread_response = gets.chomp

  if bread_response == "yes"
    wants_bread = true
  else
    wants_bread = false
  end

  puts "Would you like to enroll in the company's health insurance?"
  health_insurance_response = gets.chomp

  if health_insurance_response. == "yes"
    wants_insurance = true
  else
    wants_insurance = false

  end





  # If the employee got their age right, and is willing to eat garlic bread or sign up for insurance, the result is “Probably not a vampire.”
  # If the employee got their age wrong, and hates garlic bread or waives insurance, the result is “Probably a vampire.”
  # If the employee got their age wrong, hates garlic bread, and doesn’t want insurance, the result is “Almost certainly a vampire.”
  # Even if the employee is an amazing liar otherwise, anyone going by the name of “Drake Cula” or “Tu Fang” is clearly a vampire, because come on. In that case, you should print “Definitely a vampire.”
  # Otherwise, print “Results inconclusive.”
  puts "age_right is " + (age_right ? "true" : "false")
  puts "wants_bread is " + (wants_bread ? "true" : "false")
  puts "wants_insurance is " + (wants_insurance ? "true" : "false")


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

  num_loops = num_loops + 1




end

