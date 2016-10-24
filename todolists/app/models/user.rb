class User < ActiveRecord::Base
	has_one :profile, dependent: :destroy
	has_many :todo_lists, dependent: :destroy
	# Implement a 1:many through relationship from User to ToDoItem by using the 1:many relationship from User to ToDoLists as a source. 
	has_many :todo_items, through: :todo_lists, source: :todo_items, dependent: :destroy
end
