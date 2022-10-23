class GraphNode
    attr_reader :value
    attr_accessor :neighbors
    def initialize(value)
        @value = value
        @neighbors = []
    end

    def bfs(starting_node, target_value)
        #define a new set to put already checked values in
        visited = Set.new
        visited.add(starting_node)
        to_check = [starting_node]
        #loop through set starting at the starting node
        while to_check.length > 0
            if to_check.value.shift == target_value
                return to_check.shift
            else
                to_check.neighbors.each do |neighbor|
                    return nil if visited.include?(neighbor)
                    to_check << neighbor
                end
            end
        end
    end
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