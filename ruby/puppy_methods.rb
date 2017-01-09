class Puppy

  def fetch(toy)
    puts "Puppy: I brought back the #{toy}!"
    toy
  end

  def speak(number)
    number.times {puts "Woof!"}
  end

  def roll_over()
    puts "*rolls over*"
  end

  def dog_years(age)
    dog_years = age * 7
    puts "Owner: The dog is #{dog_years} years old in dog years."
  end

  def play_dead()
    puts "BANG!"
    puts "*Plays dead*"
  end

  def initialize
    puts "Initialize new puppy instance ..."
  end
end

fido = Puppy.new

fido.fetch("ball")
fido.speak(5)
fido.roll_over
fido.dog_years(3)
fido.play_dead

##################################################

class Movies
  
  def initialize
    puts "Initializing new movie instance"
  end
  
  def seen(number)
    seen = number
    puts "I've seen this movie #{seen} times"
  end
  
  def favorite()
    puts "this is one of my favorite movies"
    
end

movies_array = []

50.times do
  puts "Name a movie title"
  movie_title = gets.chomp
  movie_title = Movies.new
  movies_array.push(movie_title)
end

movies_array.each do |movies|
  puts movies.seen(5)
  puts movies.favorite
end
end