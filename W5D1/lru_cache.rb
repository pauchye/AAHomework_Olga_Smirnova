class LRUCache
    def initialize
        @underlying_array = []
    end

    def count
        underlying_array.count
      # returns number of elements currently in cache
    end

    def add(el)
        if underlying_array.include?(el)
            underlying_array.delete(el)
            underlying_array << el
        elsif count == size
            underlying_array.shift
            underlying_array << el
        else
            underlying_array << el
        end

      # adds element to cache according to LRU principle
    end

    def show
        p underlying_array.dup
      # shows the items in the cache, with the LRU item first
    end

    private
    # helper methods go here!
    attr_reader :underlying_array, :size

  end