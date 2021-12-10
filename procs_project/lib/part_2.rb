def reverser(string, &prc)
reversed = string.reverse
prc.call(reversed)
end

def word_changer(string, &prc)
    sentence = string.split
    new_sentence = sentence.map {|ele| prc.call(ele)}
    new_sentence.join(" ")
end

def greater_proc_value(number, proc_1, proc_2)
    arr = [proc_1.call(number), proc_2.call(number)]
    arr.max
end

def and_selector(array, proc_1, proc_2)
    array.select {|ele| proc_1.call(ele) && proc_2.call(ele)}
end

def alternating_mapper(array, proc_1, proc_2)
    array.map.with_index do |ele, idx|
        if idx % 2 == 0
            proc_1.call(ele)
        else
            proc_2.call(ele)
        end
    end
end