  class LRUCache
    attr_accessor :cache
    def initialize(max_length)
        @cache = []
        @max_length = max_length
    end

    def count
      @cache.length
    end

    def add(el)
        if @cache.length < @max_length && !duplicate?(el)
            @cache << el
        elsif !duplicate?(el) && cache.length == @max_length
            remove_ele
            @cache << el
        else
            idx = index_of?(el)
            @cache << @cache.slice!(idx)
        end
    end

    def show
        puts cache
    end

    private
    
    def remove_ele
        @cache.shift
    end

    def duplicate?(ele)
        return true if @cache.include?(ele)
    end

    def index_of?(ele)
        @cache.index(ele)
    end

  end

  morg_cache = LRUCache.new(2)
morg_cache.add("seawithmorgan")
  morg_cache.add("hello")
  morg_cache.add("seawithmorgan")
  morg_cache.add("hello")
   puts morg_cache.show
   puts morg_cache.count