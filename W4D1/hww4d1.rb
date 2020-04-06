class GraphNode
    attr_accessor :val, :neighbors

    def initialize(val)
        self.val = val
        self.neighbors = []
    end

end

require 'set'

def bfs(starting_node, target_value, visited = Set.new())
    arr = [starting_node]  
   
    until arr.length == 0
        el = arr.shift 
        if el.val == target_value
            return el
        end 

        visited.add(el)

        el.neighbors.each do |neighbor|
            if !visited.include?(neighbor)
                arr << neighbor
            end
        end
         
    end    
   
    return nil 

end

a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]

p bfs(a, "b")

p bfs(a, "f")
