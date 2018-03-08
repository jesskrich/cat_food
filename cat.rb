class Cat

  attr_accessor :breed
  attr_accessor :age

  def initialize(breed:, age:)
    @breed = breed
    @age = age
  end
end