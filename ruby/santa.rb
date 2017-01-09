clclass Santa

	attr_accessor :age, :gender, :ethnicity

	def speak
		puts "Ho, ho, ho!! Haaaaaapy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type} cookie"
	end

	def initialize(gender, ethnicity)
		@gender = gender
		@ethnicity = ethnicity 
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = rand(141)
		puts "initializing Santa instance..."
	end

	def celebrate_birthday
		@age += 1

	end

	def get_mad_at(reindeer_name)
  		@reindeer_ranking.delete(reindeer_name)
  		@reindeer_ranking.push(reindeer_name)
  		puts "After #{reindeer_name}'s behavior the reindeer ranking is now #{@reindeer_ranking.index("reindeer_name")}."
  	end

  	#setter methods
  		#def age=(new_age)
  		#	@age = new_age
  		#	puts "this santa is #{@age}"
  		#end

		#def gender=(new_gender)
		#	@gender = new_gender
		#end

  	#getter methods
  	#def age
  	#	@age
  	#end

  	#def ethnicity
  	#	@ethnicity
  	#end
end

santas = []
#santas << Santa.new("agender", "black")
#santas << Santa.new("female", "Latino")
#santas << Santa.new("bigender", "white")
#santas << Santa.new("male", "Japanese")
#santas << Santa.new("female", "prefer not to say")
#santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
#santas << Santa.new("N/A", "N/A")

#santas << Santa.new("male", "martian")
#santas[0].speak
#santas[0].eat_milk_and_cookies("sugar")
#santas[0].age
#santas[0].age = 35
#santas[0].get_mad_at("Vixen")

example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["Martian", "Kryptonian", "Amazonian", "Minotaur", "prefer not to say", "Unicorn", "N/A"]

counter = 0
  until counter == 5
    santas << Santa.new(example_ethnicities.sample, example_genders.sample, )

    puts "The new santa is #{santas[counter].age} years old, is #{santas[counter].gender}, and #{santas[counter].ethnicity}."    
    
    counter += 1

  end