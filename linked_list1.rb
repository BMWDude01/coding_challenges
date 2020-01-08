class LinkedListNode
 attr_accessor :value, :next_value
  def initialize(value,next_value=nil) 
  	@value=value
  	@next_value=next_value
  end	
end

class Stack
  attr_reader :data
   def initialize
  	@data=nil
   end	
 def push(value)
   @data=LinkedListNode.new(value,@data)
 end
   def pop
   	if @data !=nil
   	  print "#{@data.value}"
 	    @data=@data.next_value
 	  else
 	    print "nil"
 	  end  
   end
end	

def print_values(list_node)
	if list_node
	  print "#{list_node.value}---->"
	  print_values(list_node.next_value)
	else
	  print "nil"
	end
end
def reverse_list(data_present)
	stack=Stack.new
	while data_present
		stack.push(data_present.value)
		data_present=data_present.next_value
	end
	return stack.data	
end


node1=LinkedListNode.new(37)
node2=LinkedListNode.new(99,node1)
node3=LinkedListNode.new(12,node2)
print_values(node3)
puts "----------"
revlist=reverse_list(node3)
print_values(revlist)