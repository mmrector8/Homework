#write a function that uses recursion to calculate the sum from 1 to n
def sum_to(n)
#base cases
    return 1 if n == 1
    return nil if n < 1
#inductive case
    n + sum_to(n-1)
end

#write a recursive method that takes in an array of nums and returns sum

def add_numbers(nums_array)
  return nums_array if nums_array.length <= 1
    
  #grab the end of the element and add it to the first index
  add_numbers(nums_array[0..-2]) +  [nums_array.pop]
end


  p  add_numbers([1,2,3,4]) # => returns 10
# p  add_numbers([3]) # => returns 3
# p  add_numbers([-80,34,7]) # => returns -39
# p  add_numbers([]) # => returns nil


def gamma_fnc(n)
    return 1 if n <= 1

    (n-1) * gamma_fnc(n-1)
end



def ice_cream_shop(flavors,favorite)
    #return false if arr.length ==1 && !arr.include?(favorite)
    return false if flavors.length == 0
    return false if flavors.length == 1 && !flavors.include?(favorite)

    #check if first element has flavors,
    #if not remove it
    if flavors[0].include?(favorite)
        return true
    else
        flavors.unshift
        ice_cream_shop(flavors[1..-1], favorite)
    end

end


def reverse(string)
    return string if string.length <= 1

    string[-1] + reverse(string[0..-2])

end

