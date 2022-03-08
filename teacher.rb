require_relative './person'

class Teacher < Person
  def initialize(name = 'Unknown', age, specialization, parent_permission: true)
    super(age, name, parent_permission: true)
    @specialization = specialization
    @age = age
    @name = name
    @parent_permission = parent_permission
  end

  def can_use_services?
    true
  end
end

teacher = Teacher.new('victor', 10, 'programming', parent_permission: false)
puts teacher.can_use_services?
