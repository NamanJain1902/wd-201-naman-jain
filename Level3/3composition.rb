class Student
  def initialize(id, name)
    @id = id
    @name = name
  end
end

class Course
  def initialize(name, students)
    @name = name
    @students = students
  end

  def enroll(new_student)
    @students.push(new_student)
  end

  def is_student_enrolled?(id)
    @students.any? {|student| student.id == id}
  end

  def get_students(id)
    @students.find {|student| student.id == id}
  end

  def details
    "Course Name: #{@name}"
    # @students.each do |i|
    #   puts i.id
    # end
    @students
  end
end

aye = Course.new("WD 201", [
  Student.new(715, "Naman"),
  Student.new(716, "Ayush")
])

# pp aye.students
puts aye.details
aye.enroll(Student.new(007, "NJ"))
puts aye.is_student_enrolled?(007)
puts aye.is_student_enrolled?(001)
puts aye.get_students(715)
puts aye.get_students(715).name
