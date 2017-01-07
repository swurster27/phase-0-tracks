class TodoList
	@item_list = []

	def initialize(array)
			@item_list = array
	end 

	def get_items
		@item_list
	end

	def add_item(item)
		@item_list.push(item)
	end

	def delete_item(item)
		@item_list.delete(item)
		@list
	end

	def get_item(int)
		@list[int]
	end

end