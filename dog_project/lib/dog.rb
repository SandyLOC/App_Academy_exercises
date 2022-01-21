class Dog
    def initialize(name, breed, age, bark, favorite_foods)
        @name = name
        @breed = breed
        @age = age
        @bark = bark
        @favorite_foods = favorite_foods
    end

    def name
        @name
    end
    def breed
        @breed
    end
    def age
        @age

    end
    def age=(num)
        @age = num
    end
    def bark
        if @age > 3
            return @bark.upcase
        end
        @bark.downcase
    end
    def favorite_foods
        @favorite_foods
    end
    def favorite_food?(string)
        new_arr = []
        @favorite_foods.each {|el| new_arr << el.downcase}
        item = string.downcase
        return new_arr.include?(item)
    end

end
