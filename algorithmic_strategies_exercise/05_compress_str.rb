# Write a method, compress_str(str), that accepts a string as an arg.
# The method should return a new str where streaks of consecutive characters are compressed.
# For example "aaabbc" is compressed to "3a2bc".
def compress_str(str)
new_arr = []
count = 1
    str.each_char.with_index do |char, idx|
        if str[idx + 1] == str[idx]
            count = count + 1
            next
        end
        if count != 1
            new_arr << count
        end
        count = 1
        new_arr << str[idx]
    end
    new_arr.join
end

p compress_str("aaabbc")        # => "3a2bc"
p compress_str("xxyyyyzz")      # => "2x4y2z"
p compress_str("qqqqq")         # => "5q"
p compress_str("mississippi")   # => "mi2si2si2pi"
