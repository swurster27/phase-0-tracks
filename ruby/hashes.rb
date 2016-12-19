#ask client's for information.
# should gather all the information needed to establish a connection with th client.
# name, age, number

puts "Client Data Form"
puts "Name:"
clients_name = gets.chomp
puts "Age:"
clients_age = gets.chomp
puts "Number of children:"
clients_num_of_children = gets.chomp
puts "Theme:"
clients_decor_theme = gets.chomp
puts "Favorite color:"
clients_color = gets.chomp
puts "How many rooms int he client's home:"
clients_number_of_rooms = gets.chomp.to_i

#creat a hash from the data gathered in the previous section.

client_form = {
  name: "#{client_name}",
  age: "#{client_age}",
  children: "#{client_children_num_of_children}",
  decor: "#{client_decor_theme}",
  color: "#{client_snack}",
  rooms: "#{clients_number_of_rooms}"
}

# Show them what they have input

puts "Here is your current client form:"
puts client_form.values

# if needed provide a way to make changes if needed.

puts "Would you like to update any fields?(yes or no)"
update = gets.chomp

if update == "yes"
  puts "Which field? Pick the one you want to change:"
    puts client_form.keys
    change_key = gets.chomp
  puts "What do you want to change it to?"
    change_value = gets.chomp
    client_form[:"#{change_key}"] = "#{change_value}"
    puts "Okay, here is your final client form."

elsif update == "no"
  puts "Okay, here is your final client form."

else
end

#Print the latest version of the hash, and exit the program.
p client_form