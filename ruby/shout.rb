# module Shout
# 	#code will be added here soon
# 	def self.yell_angrilly(words)
# 		words + "!!!" + " :("
# 	end

# 	def self.yell_happily(words)
# 		words + "!!!" + " :)"
# 	end

# end

# p Shout.yell_angrilly("I can't believe it")
# p Shout.yell_happily("I can't believe it")

module Shout

	def shout_happily(words)
		puts words + "!!!!" + " today is a great day!"
	end
	
	def shout_angrilly(words)
	  puts words + "?!?!" + " today is a horrible day."
	end

end

class Coach
	include Shout
end

class New_parent
	include Shout
end

coach = Coach.new 
coach.shout_happily("He won")
coach.shout_angrilly("He lost")


parent = New_parent.new
parent.shout_happily("It's a girl")
parent.shout_angrilly("there might be complications")