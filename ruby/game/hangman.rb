# create a  method with an array that accepts a word and stores it for future guesses.
# create a guess limit based on how long the word is. repeated guesses do not count against the user
# have the method look at the index and replace the blanks witht he correct letter guessed. 
# have the game give continual feedback after each guess.
# give the user a message based on if they wo\in or not.

class Hangman
	attr_reader :guessed_word, :guess_limit, :guess_count, :guessed_letters

	def initialize(word)
		@answer_word = word
		@guessed_letters = ""
		@guess_limit = word.length + 3
		@guess_count = 0
		@guessed_word = ""
		word.length.times {@guessed_word << "-"}
	end

	def letters(letter)
		if @guessed_letters.include?(letter)
			@guess_count -= 1
		end
		@guessed_letters << letter
		@guess_count += 1
		if @answer_word.include?(letter)
			word_index = 0
			@answer_word.each_char do |x|
				@guessed_word[word_index] = x if x == letter 
				word_index += 1
			end
		end
	end

	def win
		if @answer_word == @guessed_word
			return true
		else
			return false
		end
	end
end

#driver code

puts "Lets play a game, I'm thinking a game of hangman. Please provide a word so we can get this party started."
word = gets.chomp
new_game = Hangman.new(word)
50.times { puts "..." }
puts "now that player 2 can't see the word they are trying to guess please pass the console to user 2."
5.times {puts "..."}
puts "The word you are trying to guess contains #{new_game.guessed_word.length} letters."
puts new_game.guessed_word

while new_game.guess_count < new_game.guess_limit
	puts "Please provide a character:"
	character = gets.chomp
	if character.length != 1
		puts "Please only enter one guess at a time."
	end
	if new_game.guessed_letters.include?(character)
		puts "You shouldn't guess the same letters more than once. Try again."
	end
	puts new_game.letters(character) ? "one step closer! keep going" : "Ouch, try again buddy"
	puts new_game.guessed_word
	break if new_game.win
	puts "You have #{new_game.guess_limit - new_game.guess_count} guesses left."
end