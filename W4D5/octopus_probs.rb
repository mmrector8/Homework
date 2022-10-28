octo_arr = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 
 'fiiiissshhhhhh']

def sluggish_octo(arr)
    longest_fish = nil
    longest_fish_length = 0

    (0...arr.length).each do |i|
        (0...arr.length-1).each do |j|
            if j > i 
                if arr[i].length > longest_fish_length
                    longest_fish = arr[i]
                    longest_fish_length = arr[i].length
                end
            end
        end
    end
    longest_fish
end



def dominant_octo
end

def clever_octo
end

def dancing_octo
end

def slow_dance
end

def constant_dance
end