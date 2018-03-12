class Cat

  attr_accessor :breed
  attr_accessor :age

  def initialize(breed:, age:)
    @breed = validate_breed(breed)
    @age = validate_age(age)
  end

  def validate_breed(breed)
    if ['tabby', 'siamese', 'reverse_growth'].include?(breed.downcase)
      breed.downcase
    end
  end

  def validate_age(age)
    if age.to_i >= 0
      age
    end
  end
end
