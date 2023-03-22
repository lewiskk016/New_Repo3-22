
def range(a, b)
    return [] if a == b
    # return [] if b == a + 1


    [a] + range(a + 1, b)

end

# p range(1,5)

def exp(b, n)
    
end
