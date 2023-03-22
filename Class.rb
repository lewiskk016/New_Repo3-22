require "byebug"
def range(a, b)
    return [] if a == b
    # return [] if b == a + 1


    [a] + range(a + 1, b)

end

# p range(1,5)

# def exp(b, n) #b^n      #done the first way
#     return 0 if b == 0
#     return 1 if n == 0
#     return b if n == 1

#     b* exp(b, n-1)
# end

def exp(b, n)
    return 0 if b == 0
    return 1 if n == 0
    return b if n == 1

    divided_two = exp(b, n/2)   #b^(n/2)
    var_odd = exp(b, (n-1)/2)

    if n.even?
        divided_two * divided_two   #exp(b, n) = exp(b, n/2) * exp(b, n/2)
    else
        b* var_odd * var_odd        # b^25 = b^12 * b^12 * b
    end

end


# p exp(2,4) #16
# p exp(2,8) #516
# p exp(3,2) #9
# p exp(2,6)
#  +=
def deep_dup(arr)
    # return [] if arr.empty?

    # holder = deep_dup(arr[..-1])
    new_arr = []
    # new_arr += arr[0] + holder
    arr.each do |ele|
        if ele.is_a?(Array)
            new_arr << deep_dup(ele)
        else
            new_arr << ele
        end
    end
    new_arr
end

a = [1, [2], [3, [4]]]

# p deep_dup(a)

def fibonacci(n)
    return [] if n == 0
    return [0] if n == 1
    return [0, 1] if n == 2

    prev = fibonacci(n-1)
    prev << prev[-1] + prev[-2]
end

# p fibonacci(14)

def bsearch(array, ele)
    mid_idx = array.length / 2

    return mid_idx if array[mid_idx] == ele
    return nil if array.count == 1 && array[0] != ele



    if ele < array[mid_idx]
        bsearch(array[0...mid_idx], ele)
    else
        if bsearch(array[(mid_idx + 1)..-1], ele).is_a?(Integer)
            (mid_idx + 1) + bsearch(array[(mid_idx + 1)..-1], ele)
        else
            nil #the if/else and line 85 are to kick 'nil' up from base case on line 78 if ele is not in array
        end
    end
end

# p bsearch([1, 2, 3], 1) # => 0
# p bsearch([2, 3, 4, 5], 3) # => 1
# p bsearch([2, 4, 6, 8, 10], 6) # => 2
# p bsearch([1, 3, 4, 5, 9], 5) # => 3
# p bsearch([1, 2, 3, 4, 5, 6], 6) # => 5
# p bsearch([1, 2, 3, 4, 5, 6], 0) # => nil
# p bsearch([1, 2, 3, 4, 5, 7], 6) # => nil

def merge_sort(arr)
    # debugger
    new_array = []
    mid_idx = arr.length / 2
    return arr if arr.count == 1


    left_arr = merge_sort(arr[0..mid_idx - 1])
    right_arr = merge_sort(arr[mid_idx..-1])
    # if left_arr.count == 1
        new_array << left_arr

    #     # merge_sort(left_arr)
    # end
    # if right_arr.count == 1
        new_array << right_arr

    #     # merge_sort(right_arr)
    # end
end

# p merge_sort([1, 21, 2, 4, 5])

def merge(arr)
 new_array = []

    (0...arr.length - 1)
    i = 1
    if i.odd?
        if arr[i] > arr[i - 1]
            new_array <
        end
    end
end

#at line 131 we use arr.pop() the first ele so we can continually
#compare first elements.
