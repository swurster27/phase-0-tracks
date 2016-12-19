#Secret Agent Name coder
# Take a spies real name and fake names
#swap the first and last name
def next_in_line(nexter)
	consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
	vowels = ["a", "e", "i", "o", "u"]

	nexter = nexter.downcase.split('')
	secret_name = nexter.map do |letters|
		if consonants.include?(letters)
			consonants.rotate(1)[consonants.index(letters)]
		elsif vowels.include?(letters)
			vowels.rotate(1)[vowels.index(letters)]
		else 
		  letters
		end
	end
	secret_name.join.split(" ").reverse.join(' ')
end

next_in_line("Felicia Torres")

Code_names = {}
input = nil
until input == "quit"
  puts "Hello agent, We've noticed you need a secret name to go undercover with. Please enter you real name and an alias will be given to you. (type exit if you would like to stop):"
   input = gets.chomp 
   secret_agent_name = next_in_line(input)
    puts "#{input}'s super secret name is #{secret_agent_name}." unless input == "quit"
#store all the data in a hash 
    Code_names.store(input,secret_agent_name) unless input == "quit"
    if input == "quit"
      puts "Here are your results:"
      Code_names.each do |input,secret_agent_name|
        puts "#{input} is also known as #{secret_agent_name}."
          end
    end
end