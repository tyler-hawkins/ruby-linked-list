require_relative "./lib/linked_list"

# Make a linked list and add a value to it
my_list = LinkedList.new()
my_list.append(1)
my_list.append(100)

# Print the list contents to the console
puts my_list.to_s()

# Print list size
puts my_list.size()

# Prepend a value to the list
my_list.prepend(1000)
puts my_list.to_s()

# Print head and tail values of the list
puts "Head: " + my_list.head().value.to_s() + "\n" + "Tail: " + my_list.tail().value.to_s()

# Print node at index 1 (second node in list)
puts "Value at index 1: " + my_list.at(1).value.to_s()

# Pop last element from the list
my_list.pop()
puts my_list.to_s()

# Does the (modified) list contain 1000 or "hello"?
puts "Contains 1000?: " + my_list.contains?(1000).to_s() # Should be true
puts "Contains \"hello\"?: " + my_list.contains?("hello").to_s() # Should be false

# Add some more stuff to the list
my_list.append(999)
my_list.append(5)
my_list.append(33)

puts my_list.to_s()

# Get the index of the value 5 in the linked list
puts "Index of 5: " + my_list.find(5).to_s()