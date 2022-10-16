require_relative "./node"

class LinkedList
	attr_accessor :head

	def initialize()
		@head = nil
	end

	def append(value)
		if @head.nil? then
			@head = Node.new(value)
			return;
		end
		tail().next = Node.new(value)
	end

	def prepend(value)
		orig_head = @head
		@head = Node.new(value)
		@head.next = orig_head
	end

	def size()
		node = @head
		return 0 if node.nil? 
		count = 1
		until node.next.nil? do
			count += 1
			node = node.next
		end
		return count
	end

	def head()
		return @head
	end
	
	def tail()
		node = @head
		until node.next.nil? do
			node = node.next
		end
		return node
	end

	def at(index)
		return nil if index.nil? || index >= size()
		node = @head
		until index == 0 do
			node = node.next
			index -= 1
		end
		return node
	end

	def pop(node = @head)
		if node.next == tail()  then
			node.next = nil
		else
			pop(node.next)
		end
	end

	def contains?(value, node = @head)
		return true if node.value == value
		return false if node == tail()
		return contains?(value, node.next)
	end

	def find(value, index = 0, node = @head)
		return nil if index > size() - 1
		return index if node.value == value 
		index += 1
		return find(value, index, node.next)
	end

	

	def to_s()
		return "Empty!" if @head.nil?
		result = ""
		node = @head
		until node.nil? do
			result += "( #{node.value.to_s()} ) -> "
			node = node.next
		end
		result += "nil"
		return result
	end
end