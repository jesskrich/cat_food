class Calculator

  def initialize(person:)
    @person = person
  end

  def calculate
    total = 0
    @person.cats.each do |c|
      case c.breed
        when "tabby"
          food = 10 - c.age
        when "siamese"
          food = 20 - (c.age * 2)
        when "reverse_growth"
          food = 1 + c.age
      end
      if food > 0
        total = total + food
      else
        total = total + 1
      end
    end
    total
  end
end
