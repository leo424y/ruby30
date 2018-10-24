class Person
	def initialize(firstName, lastName, id)
		@firstName = firstName
		@lastName = lastName
		@id = id
	end
	def printPerson()
		print("Name: ",@lastName , ", " + @firstName ,"\nID: " , @id)
	end
end

class Student <Person
    def initialize(firstName, lastName, id, score)
      super(firstName, lastName, id)
      @score = score
    end

    def calculate
      total = @score.sum/@score.size
      if total < 101 && total > 89
        'O'
      elsif total < 90 && total > 79
        'E'
      elsif total < 80 && total > 69
        'A'
      elsif total < 70 && total > 54
        'P'
      elsif total < 55 && total > 40
        'D'
      else
        'T'
      end
    end
end

# input = gets.split()
# firstName = input[0]
# lastName = input[1]
# id = input[2].to_i
# numScores = gets.to_i
# numScores.times {
#   scores << gets.strip().split().map!(&:to_i)
# }
# s = Student.new(firstName, lastName, id, scores)
# s.printPerson
# print("\nGrade: " + s.calculate)

input = gets.split()
firstName = input[0]
lastName = input[1]
id = input[2].to_i
numScores = gets.to_i
scores = gets.strip().split().map!(&:to_i)
s = Student.new(firstName, lastName, id, scores)
s.printPerson
print("\nGrade: " + s.calculate)
