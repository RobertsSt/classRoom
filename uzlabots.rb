class Student
  def initialize(firstname, surname, idNumber, age)
    @firstname = firstname
    @surname = surname
    @idNumber = idNumber
    @age = age
  end

  def fullInfo
    "#{@firstname} #{@surname} - #{@idNumber} #{@age}"
  end
end

class ClassRoom
  attr_reader :className
  def initialize (className)
    @className = className
    @students = []
  end

  def addStudent(student)
    @students.push(student)
  end

  def studentCount()
     @students.length
  end

  def listStudents()
    @students.each do |student|
      puts student.fullInfo
    end
    nil
  end
end

puts "Sie skolnieki ir palaidiigi"
person1 = Student.new("Roberts","Steins","rs17055","420")
person2 = Student.new("Ingus","Skaistulitis","IS420","32")
classroom = ClassRoom.new("Audzinasana")

classroom.addStudent(person1)
classroom.addStudent(person2)

puts "Ir #{classroom.studentCount()} studenti klasee #{classroom.className()}"
classroom.listStudents()

