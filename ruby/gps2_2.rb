# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: # use items as keys and quantities as values
  # assign hash of items to a variable
  # [fill in any steps here]
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: hash[what data type goes here, array or hash?]

def create_list(items)
    arr = items.split(" ")
    hash = {}
    arr.each do |item|
        hash[item] = 1
    end
    hash
end


# Method to add an item to a list
# input: grocery list, item name and optional quantity
# steps: add quantities to any items
# output: key value pairs(hash)


def add_item_to_list(existing_list, item)
    existing_list[item] = 2
    # existing_list[item.to_sym] = 2
    existing_list
end


# Method to remove an item from the list
# input: grocery list, list items and quantity
# steps: remove a key value pair
# output: key value pairs(hash)


def remove_item_from_list(existing_list, item)
  existing_list.delete(item)
  existing_list
end

p grocery_list = create_list("pairs apples grapes pizza")
p add_item_to_list(grocery_list, "melons")
p remove_item_from_list(grocery_list, "apples")


# Method to update the quantity of an item
# input: grocery list, list items and quantity
# steps: updating quantity values to list item keys
# output: new and updated quantity for items

# Method to print a list and make it look pretty
# input: grocery list as whole
# steps: print console item ---> quantity
# output: display items with their quantities