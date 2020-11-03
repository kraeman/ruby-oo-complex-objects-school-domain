# code here!
class School
    def initialize(name)
        @name = name
        @roster = {}
    
    end


    def roster
        @roster
    end

    def add_student(student, grade)
        @student = student.split(", ")
        @grade = grade
        while @roster[@grade] == nil
            @roster[@grade] = []
        end
        @student.map do |person|
            @roster[@grade].push(person)
        end
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster.map do |key, value|
            @roster[key] = value.sort
        end
        @roster
    end
end