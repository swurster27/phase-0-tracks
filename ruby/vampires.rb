#In addition to the other questions in the survey, use a loop to ask the employee to name any allergies, one at a time. The employee can type “done” when finished.

#As long as the allergy is not “sunshine,” continue the loop for as long as is needed. If at any point the employee lists “sunshine” as an allergy, skip directly to the result of “Probably a vampire.”
#break statment/ keep in mind

puts "how many employees will be processed?"
num_employees = Integer(gets.chomp)
num_loops = 0

while num_loops < num_employees
  num_loops = num_loops + 1

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



  puts "Our cafeteria serves garlic bread. Should we get some for you"
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

  puts "could you please name any allergies you have?"
  allergy_response = ""

  until allergy_response == "done"
    allergy_response = gets.chomp
    if allergy_response == "sunshine"
      puts "Probably a Vampire"
      break
    end
  end

  if allergy_response != "sunshine"
    if (age_right && (wants_bread || wants_insurance))
      puts "Probably not a Vampire"
    elsif (!age_right && !wants_bread && !wants_insurance)
      puts "definiely a vampire"
    elsif (!age_right && (!wants_bread || !wants_insurance))
      puts "probably a vampire"
    elsif (name == "Drake Cula" || name =="Tu Fang")
      puts "definiely a vampire"
    else
      puts "results inconclusive"
    end
  end
end
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
