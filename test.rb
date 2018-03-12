require './cat'
require './person'
require './calculator'

class Test
  class << self

    def go
      test_case_one
      test_case_two
      test_case_three
      test_case_four
      test_case_five
      test_case_six
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

      expected_food = 17

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

    def test_case_four
      tabby = Cat.new(breed: 'tabby', age: -5)

      if tabby.age == nil
        puts "passed test case four"
      else
        puts "test case four failed. expected nil, got #{tabby.age}"
      end
    end

    def test_case_five
      tabby = Cat.new(breed: 'tabbi', age: 4)

      if tabby.breed == nil
        puts "passed test case five"
      else
        puts "test case five failed. expected nil, got #{tabby.breed}"
      end
    end

    def test_case_six
      tabby = Cat.new(breed: 'TABBY', age: 1)

      if tabby.breed == "tabby"
        puts "passed test case six"
      else
        puts "test case five failed. expected #{tabby.breed}, got nil"
      end
    end
  end
end

Test.go
