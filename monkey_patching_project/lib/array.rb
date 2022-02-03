# Monkey-Patch Ruby's existing Array class to add your own custom methods
class Array
#Part 1
    def span
        return nil if self.length == 0
        self.max - self.min
    end

    def average
        return nil if self.length == 0
        self.sum/self.size.to_f
    end

    def median
        return nil if self.length == 0
        num = self.length/2
        sort_arr = self.sort
            if self.length.odd?
                sort_arr[num]
            elsif self.length.even?
                (sort_arr[num-1] + sort_arr[num])/2.0
            end
    end

    def counts
        counter = Hash.new(0)
        self.each {|el| counter[el] += 1}
        counter
    end
#Part 2

    def my_count(value)
        counter = 0
        self.each {|el| counter += 1 if el == value}
        counter
    end

    def my_index(value)
        if self.include?(value)
            self.each_with_index {|el, idx| return idx if el == value}
        else
            return nil
        end
    end

    def my_uniq
        new_array = []
        self.each do |el|
            if !new_array.include?(el)
                new_array << el
            end
        end
        new_array
    end

    def my_transpose
        length = self.length
        hor = 0
        grid = Array.new(length){Array.new(length)}
        self.each do |el1|
            vert = 0
            el1.each do |el2|
                grid[vert][hor] = el2
                vert += 1 
            end
            hor += 1
        end
        grid
    end
end
 