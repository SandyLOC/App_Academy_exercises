class Bootcamp
#Part 1
    def initialize(name, slogan, student_capacity)
        @name = name
        @slogan = slogan
        @student_capacity = student_capacity
        @teachers = Array.new()
        @students = Array.new()
        @grades = Hash.new{|h, k| h[k] = []}
    end

    def name
        @name
    end
    def slogan
        @slogan
    end
    def teachers
        @teachers
    end
    def students
        @students
    end
    def hire(person)
        @teachers << person
    end
    def enroll(student)
        if @students.count < @student_capacity
            @students << student
            return true
        else
            return false
        end
    end
    def enrolled?(student)
        @students.include?(student)
    end
#Part 2
    def student_to_teacher_ratio
        @students.length/@teachers.length
    end
    def add_grade(student, grade)
        if enrolled?(student)
            @grades[student] << grade
            return true
        else
            return false
        end
    end
    def num_grades(student)
        @grades[student].count
    end
    def average_grade(student)
        if enrolled?(student) == false || @grades[student] == []
            return nil
        else
            @grades[student].sum/@grades[student].count
        end
    end
end


