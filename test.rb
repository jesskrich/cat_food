require './cat'
require './person'
require './calculator'

class Test
  class << self

    def go
      test_case_one
      test_case_two
      test_case_three
    end

    def test_case_one
      tabby   = Cat.new(breed: 'tabby',   age: 5)
      siamese = Cat.new(breed: 'siamese', age: 0)
      person  = Person.new(cats: [tabby, siamese])

      expected_food = 25

      actual_food = Calculator.new(person: person).calculate

      if actual_food == expected_food
        puts "passed test case one"
      else
        puts "test case one failed. expected #{expected_food}, got #{actual_food}"
      end
    end

    def test_case_two
      reverse_growth = Cat.new(breed: 'reverse_growth', age: 15)
      tabby          = Cat.new(breed: 'tabby',          age: 15)
      person         = Person.new(cats: [reverse_growth, tabby])

      expected_food = 32

      actual_food = Calculator.new(person: person).calculate

      if actual_food == expected_food
        puts "passed test case two"
      else
        puts "test case two failed. expected #{expected_food}, got #{actual_food}"
      end
    end

    def test_case_three
      person = Person.new(cats: [])
      expected_food = 0
      actual_food = Calculator.new(person: person).calculate

      if actual_food == expected_food
        puts "passed test case three"
      else
        puts "test case three failed. expected #{expected_food}, got #{actual_food}"
      end
    end
  end
end

Test.go