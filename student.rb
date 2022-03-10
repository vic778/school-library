require_relative './person'
require_relative './rental'

class Student < Person
  def initialize(classroom, age, name = 'Unknown', parent_permission: true)
    super(age, name, parent_permission: true)
    @age = age
    @name = name
    @classroom = classroom
    @parent_permission = parent_permission
  end

  def owner=(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end

student = Student.new('class1', 24, 'barh', parent_permission: false)

puts student.name
puts student.can_use_services?
