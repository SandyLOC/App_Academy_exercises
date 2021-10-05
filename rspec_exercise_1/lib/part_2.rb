def hipsterfy(word)
    vowels = "aeiou"
    i = ""
    arr = word.split("")
    arr.each.with_index do |char, index|
        if vowels.include?(char)
            i = index
        end
    end
    if i == ""
       return word
    end
    arr.delete_at(i)
    arr.join("")
end

def vowel_counts(string)
    hash = Hash.new(0)
    vowels = "aeiou"
    string.downcase.each_char do |char|
        if vowels.include?(char)
        hash[char] += 1
        end
    end
    hash
end

def caesar_cipher(message, n)
    alphabet = "abcdefghijklmnopqrstuvwxyz"
    new_string = ""
    message.each_char do |char|
        if alphabet.include?(char)
        old_index = alphabet.index(char)
        new_index = old_index + n
        new_char = alphabet[new_index % 26]
        new_string += new_char
        else
            new_string += char
        end
    end
    new_string
end

