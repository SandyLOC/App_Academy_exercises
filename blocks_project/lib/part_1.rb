def select_even_nums(array)
array.select(&:even?)
end

def reject_puppies(dogs)
dogs.reject {|ele| ele["age"] <= 2}
end

def count_positive_subarrays(array)
    array.count {|ele| ele.sum > 0}
end

def aba_translate(string)
    vowels = "aeiou"
    arr = string.split("")
    arr.each.with_index {|char, idx| arr[idx] = char + "b" + char if vowels.include?(char)}
    arr.join("")
    end

def aba_array(array)
array.map {|ele| aba_translate(ele)}
end