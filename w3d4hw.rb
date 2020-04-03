class Stack
    attr_reader :arr
    def initialize
        @arr = []
      # create ivar to store stack here!
    end

    def push(el)
        @arr.push(el)
      # adds an element to the stack
    end

    def pop
        @arr.pop
      # removes one element from the stack
    end

    def peek
        @arr.last
      # returns, but doesn't remove, the top element in the stack
    end
    
  end

  class Queue
    attr_reader :arr
    def initialize
        @arr = []
      # create ivar to store stack here!
    end

    def enqueue(el)
        @arr.push(el)
      # adds an element to the stack
    end

    def dequeue
        @arr.shift
      # removes one element from the stack
    end

    def peek
        @arr.last
      # returns, but doesn't remove, the top element in the stack
    end
    
  end
#had to chech solution for the map
  class Map 
    def initialize
      @underlying_array = []
    end
  
    def set(key, value)
      pair_index = underlying_array.index { |pair| pair[0] == key }
      if pair_index
        underlying_array[pair_index][1] = value
      else
        underlying_array.push([key, value])
      end
      value
    end
  
    def get(key)
      underlying_array.each { |pair| return pair[1] if pair[0] == key }
      nil
    end
  
    def delete(key)
      value = get(key)
      underlying_array.reject! { |pair| pair[0] == key }
      value
    end
  
    def show
      deep_dup(underlying_array)
    end
  
    private
  
    attr_reader :underlying_array
    
    def deep_dup(arr)
      arr.map { |el| el.is_a?(Array) ? deep_dup(el) : el }
    end  
  end