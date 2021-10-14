def partition(array, num)
new_array = Array.new(2) {[]}
    array.each do |el|
        if el < num
            new_array[0] << el
        else
            new_array[1] << el
        end
    end
    new_array
end

def merge(hash_1, hash_2)
new_hash = {}
new_hash = {**hash_1, **hash_2}
end

def censor(sentence, words)
phrase = sentence.split
vowels = "aeiou"
    phrase.each.with_index do |el, idx|
        if words.include?(el.downcase)
            phrase[idx].each_char.with_index do |char, index|
                if vowels.include?(char) || vowels.upcase.include?(char)
                    phrase[idx][index] = "*"
                end
            end
        end        
    end
    phrase.join(" ")
end

def power_of_two?(num)
    num.to_s(2).count('1') == 1
end