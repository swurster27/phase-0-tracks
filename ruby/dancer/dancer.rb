class Dancer
	Dance_card_limit = 10
	attr_accessor :age
	attr_reader :name, :card

	def initialize(dname, age)
		@name = dname
		@age = age
		@card = Array.new
	end

	def pirouette
		return "*twirls*"
	end

	def bow
		return "*bows*"
	end

	def queue_dance_with(partner_name)
		if @card.length < Dance_card_limit
			@card << partner_name
		end
	end

	def begin_next_dance
		next_partner = @card[0]	
		@card.delete_at(0)
		return "Now dancing with #{next_partner}."
	end
end
