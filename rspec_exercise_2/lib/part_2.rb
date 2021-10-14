def palindrome?(string)
i = string.length - 1
rev = []
    while i >= 0
        rev << string[i]
        i -= 1
    end
    if string == rev.join("")
        true
    else
        false
    end
end

def substrings(string)
    i = string.length - 1
    array = []
    while i >= 0
        a = ""
        string.each_char.with_index do |char, idx|
            a = a + char
            array << a
        end
        i -= 1
        string = string[1..-1]
    end
    array
end

def palindrome_substrings(string)
substrings = []
    array = substrings(string)
    array.each do |el|
        if el.length > 1 && palindrome?(el)
            substrings << el
        end
    end
substrings
end