# Here is a class that violates the
# "Tell Don't Ask" principle:
class Course1
  def initialize(name, students)
    @name = name
    @students = students
  end

  def students
    @students
  end

  def students=(s)
    @students = s
  end

  def show
    @students
  end
end

c = Course1.new("WD-201", ["A", "B"])
c.students = c.students.concat(["X", "Y"]) # this calls `students=` method
pp c.show

class Course
  def initialize(name, students)
    @name = name
    @students = students
  end

  def add_student(student)
    @students.push(student)
  end

  def details
    @students
  end
end

c = Course.new("SaaS", ["A", "B"])
c.add_student("X")
c.add_student("Y")
pp c.details
