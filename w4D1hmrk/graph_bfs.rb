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
            first_val = to_check.shift

            if first_val.value == target_value
                return first_val
            else
                first_val.neighbors.each do |neighbor|
                    if !visited.include?(neighbor)
                    to_check << neighbor
                    end
                end
            end
        end
    end
end

