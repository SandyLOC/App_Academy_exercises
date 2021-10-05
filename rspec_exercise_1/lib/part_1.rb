def average(num_1, num_2)
sum = num_1 + num_2
sum / 2.0
end

def average_array(array)
    array.sum(0.0) / array.size
end

def repeat(string, num)
string * num
end

def yell(string)
 string.upcase + "!"
end

def alternating_case(sentence)
array = sentence.split
array.each.with_index do |word, index|
if index % 2 == 0
    array[index] = word.upcase
else
    array[index] = word.downcase  
end
end
array.join(" ")
end