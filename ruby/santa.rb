class Santa
  attr_accessor :age, :ethnicity, :gender
  #A speak method that will print "Ho, ho, ho! Haaaappy holidays!"
  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end
#An eat_milk_and_cookies method that takes a cookie type

  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie}!"
  end
#An initialize method
  def initialize(gender,ethnicity)
    puts "Initializing Santa instance ..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

  #celebrate_birthday should age Santa by one year
  def celebrate_birthday (age)
    @age = age + 1
    p @age
  end

  #get_mad_at can take a reindeer's name as an argument, and move that reindeer in last place in the reindeer rankings.
  def get_mad_at(reindeer_name)
    index = @reindeer_ranking.index(reindeer_name)
    @reindeer_ranking.insert(-1, @reindeer_ranking.delete_at(index))
  end

  def random_age
    @age = rand(140)
  end

end

#Make an empty array
#Make an example array of genders and ethnicities
santas = []
genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
ethnicities = ["black", "Latino", "white", "Japanese-African", "Asian", "Mixed", "N/A"]



100.times do
  my_santa = Santa.new(genders.sample, ethnicities.sample)
  puts "Gender: #{my_santa.gender}"
  puts "Age: #{my_santa.random_age}"
  puts "Ethnicity: #{my_santa.ethnicity}"
  puts "-" * 7
end
