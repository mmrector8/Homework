class Stack
    def initialize
        @stack  = []
    end

    def push(el)
        @stack.push(el)
    end

    def pop
        @stack.pop
    end

    def peek
        @stack[0]
    end

end