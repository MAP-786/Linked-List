require_relative 'Node.rb'

class LinkedList 
    attr_accessor:head 
    attr_accessor:temp  
    def initialize()

    end 

    def append(value)
        if @head == nil 
            @head = Node.new()
            @head.initialzie(value, nil)
            @tail = @head
        else
            @temp = @head
            @NN = Node.new()
            @NN.initialzie(value, nil)   
            while @temp.next_node != nil 
                @temp = @temp.next_node
            end 
            @temp.next_node = @NN
            @tail = @NN
        end 
    end 

    def prepend(value)
        if @head == nil 
            @head = Node.new()
            @head.initialzie(value, nil) 
        else
            @NN = Node.new()
            @NN.initialzie(value, nil)   
            @NN.next_node = head
            @head = @NN
        end
    end 

    def size()
        count = 1 
        @temp = @head 
        while @temp.next_node != nil 
            count = count + 1
            @temp = @temp.next_node
        end 
        puts "The total number of nodes in the linked list are " + count.to_s 
    end 

    def head()
        return @head
    end 

    def tail()
        return @tail 
    end 


    def at(index) 
        @temp = @head 
        count = 1 
        
        if index == 1 
            return @temp 
        end 

        while @temp.next_node != nil
            count = count + 1
            @temp = @temp.next_node
            if count == index
                return @temp
            end 
        end 
    end 

    def pop()
        @temp = @head 
        while @temp.next_node.next_node != nil 
            @temp = @temp.next_node
        end 
        @temp.next_node = nil 
    end 

    def contains_value(value)
        @temp = @head 
        while @temp.next_node != nil 
            if @temp.value == value 
                return true 
            end 
            @temp = @temp.next_node
        end 
        return false 
    end  

    def find(value)
        @temp = @head 
        count = 1
        while @temp.next_node != nil 
            if @temp.value == value 
                return count
            end 
            @temp = @temp.next_node
            count = count + 1
        end 
        return nil 
    end 

    def to_s()
        @temp = @head 
        while @temp.next_node != nil 
            print @temp.value.to_s + " "
            @temp = @temp.next_node
        end 
        puts @temp.value
    end 

end 


LL = LinkedList.new()
LL.append(10)
LL.append(20)
LL.append(30)
LL.prepend(5)
LL.append(40)
LL.to_s
LL.size()
puts LL.head()
puts LL.tail()
puts LL.at(1)
print LL.pop()
LL.to_s
puts LL.contains_value(27)
puts LL.contains_value(10)
puts LL.find(27)
puts LL.find(10)