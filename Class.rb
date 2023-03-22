
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

p deep_dup(a)
