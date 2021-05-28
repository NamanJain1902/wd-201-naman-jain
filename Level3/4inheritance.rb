class Department
  def initialize(name, classrooms_count)
    @name = name
    @classrooms_count = classrooms_count
    @teachers = []
  end

  def add_teacher(teacher)
    @teachers << teacher
  end

  def room_info
    "Classrooms count: #{@classrooms_count}"
  end

  def teacher_info
    "Number of teachers: #{@teachers.length}"
  end

  def department_info
    "Department: #{@name}, #{room_info} #{teacher_info}"
  end
end


class ComputerDepartment < Department
  def initialize(name, classrooms_count, labs_count, conf_count)
    super(name, classrooms_count)
    @labs_count = labs_count
    @conf_count = conf_count
  end

  def room_info
    "Rooms count -- classrooms: #{@classrooms_count}, labs: #{@labs_count}, conference rooms: #{@conf_count}"
  end
end

"
Sometimes a method that overrides an inherited method
would want to call the parent method. In our example,
the initialize method in ComputerDepartment wanted to
call the original initialize. For this we can call super.
It will always refer to the method of the same name from
the parent class.
"

c = ComputerDepartment.new("Computer Science & Engineering", 3, 2, 1)
c.add_teacher("Teacher 1")
c.add_teacher("Teacher 2")
puts c.department_info
