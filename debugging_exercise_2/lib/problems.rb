# Run `bundle exec rspec` and satisy the specs.
# You should implement your methods in this file.
# Feel free to use the debugger when you get stuck.

def largest_prime_factor(num)
    num.downto(2) do |factor|
        return factor if num % factor == 0 && prime?(factor)
    end
end

def prime?(num)
    return false if num < 2
    (2...num).none? {|factor| num % factor == 0 }
end

def unique_chars?(word)
    word.each_char do |char|
        return false if letter_count(word, char) > 1
    end
    return true
end

def letter_count(string, char)
    count = 0
    string.each_char {|c| count += 1 if c.downcase == char }
    count
end

def dupe_indices(array)
hash = Hash.new([])
    array.each.with_index do |char, index|
        if letter_count(array.join(""), char) > 1
            hash[char] += [index]
        end
    end
    hash
end

def ana_array(arr_1, arr_2)
hash1 = Hash.new(0)
hash2 = Hash.new(0)
    arr_1.each {|char| hash1[char] += 1 }
    arr_2.each {|char| hash2[char] += 1 }
    return true if hash1 == hash2
 return false
end