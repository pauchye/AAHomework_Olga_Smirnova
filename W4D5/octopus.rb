def quadratic_sort(arr)
   sorted = false
   until sorted
    sorted = true
    (0...arr.length - 1).each do |i|
        if arr[i].length > arr[i+1].length
            arr[i], arr[i+1] = arr[i+1], arr[i]
            sorted = false
        end
    end
   end
   arr[-1]
end


def merge_sort(arr)
  
    return arr if arr.length <= 1
    mid = arr.length / 2

    left = arr.take(mid)
    right = arr.drop(mid)

    sorted_left = merge_sort(left)
    sorted_right = merge_sort(right)

    new_arr = merge(sorted_left, sorted_right)
end
#require "byebug"
def merge(left, right)
    #debugger
    merged = []
    until left.empty? || right.empty?
        case left[0].length <=> right[0].length
        when -1
            merged << left.shift
        when 0 
            merged << left.shift
        when 1
            merged << right.shift
        end
    end
    merged += left
    merged += right
    merged
end


def simple_sort(arr)
    word = arr[0]
    arr.each do |el|
        word = el if el.length > word.length
    end
    word
end


arr = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']   
p quadratic_sort(arr)
p simple_sort(arr)
p merge_sort(arr)[-1]

def slow_dance(str, arr)
    arr.each_with_index do |el, i|
        return i if str == el
    end
end

def fast_dance(str, hash)
    hash[str]
end



tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]

tiles_hash = {
    "up" => 0,
    "right-up" => 1,
    "right"=> 2,
    "right-down" => 3,
    "down" => 4,
    "left-down" => 5,
    "left" => 6,
    "left-up" => 7
}
p slow_dance("up", tiles_array)
#> 0

p slow_dance("right-down", tiles_array)
#> 3

p fast_dance("up", tiles_hash)
#> 0

p fast_dance("right-down", tiles_hash)
#> 3