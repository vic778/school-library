require_relative './nameable'
require_relative './decorator'
require_relative './rental'

class Person < Nameable
  attr_accessor :name, :age
  attr_reader :id

  def initialize(age, name = 'Unknown', parrent_permission: true)
    super()
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parrent_permission = parrent_permission
  end

  def add_rental(book, date)
    Rental.new(book, date, self)
  end

  def can_use_services?
    is_of_age? || @parent_permission
  end

  def correct_name
    @name
  end

  private

  def of_age?
    @age >= 18
  end
end
