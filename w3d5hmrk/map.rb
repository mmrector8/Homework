class Map
    def initialize
        @map = Hash.new
    end

    def set(key,value)
        @map[key] = value if @map.empty?
             if !@map.has_key?(key)
                @map[key] = value
             else
                @map[key] = value
            end
    end

    def get(key)
        @map[key]
    end

    def delete(key)
        #loop through map hash
        @map.delete(key)
    end

    def show
        puts @map
    end

end