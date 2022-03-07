class Person
  attr_accessor :name, :age
  attr_reader :id

  def initialize(age, name = 'Unknown', parent_permission: true)
    @id = id
    @age = age
    @name = name
    @parent_permission = parent_permission
  end

  def can_use_services?
    of_age? || parent_permission == true
  end

  private

  def of_age?
    @age >= 18
  end
end

person = Person.new(40, 'victor')
puts person.name
puts person.can_use_services?
