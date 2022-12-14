octo_arr = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 
 'fiiiissshhhhhh']
#Find the longest fish in O(n^2) time.
# Do this by comparing all fish lengths to all other fish lengths
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




#find the longest fish in O(n log n) time
#quick sort or merge sort
def dominant_octo(arr)
    return arr if arr.length <=1
    #set a pivot element
    result = []
    pivot = arr[0]

    left = arr.select{|a| pivot.length > a.length }
    right = arr.select{|a| pivot.length < a.length}
    
    left_sorted = dominant_octo(left)
    right_sorted = dominant_octo(right)

    left_sorted + [pivot] + right_sorted
end
longest_word = dominant_octo(octo_arr)[-1]



def clever_octo(arr)
    longest_word = ""

    arr.each do |fish|
        if fish.length > longest_word.length
            longest_word = fish
        end
    end
    longest_word
end

tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]

def slow_dance(tile_dir, tile_arr)
    tile_arr.each_with_index do |tile, i|
        return i if tile == tile_dir
    end
end


def constant_dance(tile_dir, hash)
    hash[tile_dir]
end

tiles_hash = {
    "up" => 0,
    "right-up" => 1,
    "right"=> 2,
    "right-down"=>3,
    "down"=> 4,
    "left-down"=> 5,
    "left"=> 6,
    "left-up"=> 7
}

