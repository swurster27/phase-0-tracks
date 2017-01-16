puts "Release 0"

def say_my_name
  puts "What is your guys' name?"
  yield("Stephen", "Karan")
end

say_my_name { |name_1, name_2| puts "Our names are #{name_1} and #{name_2}!" }

puts "Release 1"
#array
#.each
sports = ["basketball", "baseball", "tennis", "wrestling", "football"]
puts "Original sports:"
p sports

sports.each do |play|
  puts "We should play #{play}."
end

#map!
sports.map! do |play|
  play.upcase
end

p sports

#hash
#.each
famous_athletes = {
  "basketball" => "Kobe Bryant",
  "baseball" => "Babe Ruth",
  "tennis" => "Roger Federer",
  "wrestling" => "John Smith",
  "football" => "Peyton Manning"
}

famous_athletes.each do |sport, athlete|
  p "#{athlete} is my favorite in #{sport}."
end


puts "Release 2"
puts "#1. Array" 
student_grades = ["B", "C", "B", "A", "C", "C", "A", "B", "C", "A", "B", "A", "C"]
p student_grades
student_grades.delete_if {|grade| grade == "B"}
p student_grades

puts "#1. Hash"

st_grades = {
  "Joe" => "B",
  "Steve" => "D",
  "Mike" => "A",
  "Nathan" => "C",
  "Bob" => "D"
}
p st_grades
st_grades.delete_if {|name, grade| grade == "D"}
p st_grades

puts "#2. Array"
numbers = ["1", "1", "2", "2", "3", "3"]
p numbers

numbers.keep_if {|each| each > "1"}
p numbers

puts "#2. hash"
numbers_and_words = {
  1 => "apple",
  2 => "banana",
  3 => "cucumber",
  4 => "dates",
  5 => "egg"
}
p numbers_and_words

numbers_and_words.keep_if {|number, words| number.odd?}
p numbers_and_words



puts "#3. Array"
letters = ["a", "b", "c", "d", "e", "f"]
p letters
letters.select {|letter| letter != "a"}
p letters

puts "#3. hash"
h = { "a" => 100, "b" => 200, "c" => 300 }
p h
h.select {|k,v| k == "a"}  #=> {"b" => 200, "c" => 300}
p h #=> {"a" => 100}

puts "#4. array"
random_number = [33, 21, 4, 15, 126, 1190]
p random_number
p random_number.drop_while { |i| i < 34 } 

puts "#4. hash"
random_post = {
  "a" => "300",
  "b" => "400",
  "c" => "500"
}
p random_post
p random_post.select { |letter, number| letter > "a" }