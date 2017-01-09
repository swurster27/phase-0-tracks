# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # break list of items into an array
  # create empty hash to store items
  # iterate over the array, for each item set the item name as key and the default quantity as the value in the empty hash.
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]

#refracting: changed item_hash to grocery_list
def create_list(list_of_items)
	items = list_of_items.split(' ')
	grocery_list = {}
	items.each do |item|
		grocery_list[item] = 1
	end
	print_list(item_hash)
end


# Method to add an item to a list
# input: list, item name, and optional quantity
# steps:  set optional quantity in argument, set key as item name and quantity is the value
# output: updated list

def add_item(list, item_name, quantity = 1)
	list[item_name] = quantity
end

# Method to remove an item from the list
# input: list and item _name
# steps: identify what to delete and delete it
# output: updatede list

def remove_item(list, item_name)
	list.delete(item_name)
end


# Method to update the quantity of an item
# input: quantity, list, item_name
# steps: identify item in list and update quantity
# output: updated quantity

def quant_update(list, item_name, quantity)
	list[item_name] = quantity
end


# Method to print a list and make it look pretty
# input: list
# steps: iterate over key value pairs in the list and print them out.
# output: printed list 

def print_list(list)
	puts "grocery list"
	list.each do |item_name, quantity|
		puts "#{item_name} #{quantity}"
	end
end

grocery_list = create_list ("carrots apples cereal pizza")

add_item(grocery_list, "lemonade", 2)
add_item(grocery_list, "tomatoes", 3)
add_item(grocery_list, "Onion")
add_item(grocery_list, "Icecream", 4)
remove_item(grocery_list, "lemonade")
quant_update(grocery_list, "Icecream", 1)
print_list(grocery_list)