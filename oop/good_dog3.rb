# frozen_string_literal: true

class GoodDog
  DOG_YEARS = 7

  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age * DOG_YEARS
  end

  def to_s
    "This dog's name os #{name} and is is #{age} in dog years"
  end
end

sparky = GoodDog.new('Sparky', 4)
puts sparky.age
puts sparky
