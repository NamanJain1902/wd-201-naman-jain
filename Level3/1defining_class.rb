class Student
  # constructor
  def initialize(roll_no, first_name, last_name)
    @roll_no = roll_no
    @first_name = first_name
    @last_name = last_name
    @is_enrolled = false
  end

  # Setter
  def enroll
    @is_enrolled = true
  end

  # Getters
  def roll_no
    @roll_no
  end

  def name
    @name
  end

  def is_enrolled?
    @is_enrolled
  end

  def fullname
    "Welcome back🥳 to College #{@first_name + ' ' + @last_name}"
  end
end

student = Student.new(1, "Naman", "Jain")

puts student.fullname
