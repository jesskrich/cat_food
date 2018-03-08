require './cat'

class Person

  attr_accessor :cats

  def initialize(cats:)
    @cats = cats
  end
end