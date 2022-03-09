require_relative './corrector'

class Person
  attr_accessor :name, :age
  attr_reader :id

  def initialize(age, name = 'Unknown', parent_permission: true)
    @id = Random.rand(1..1000)
    @age = age
    @name = name.capitalize
    @parent_permission = parent_permission
    @corrector = Corrector.new
  end

  def validate_name
    @name = @corrector.correct_name(name)
  end

  def can_use_services?
    of_age? || @parent_permission ? true : false
  end

  private

  def of_age?
    age.to_i >= 18.to_i
  end
end

person = Person.new(20, 'victorbarhere')
person.validate_name
puts person.name
