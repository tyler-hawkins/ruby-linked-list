class Node 
	attr_accessor :value, :next

	def initialize(value = nil, next_node = nil)
		@value = value
		@next = next_node
	  end
	
	  def to_s()
		puts @value
	  end

	  def value()
		@value
	  end

	  def next()
		@next
	  end
end