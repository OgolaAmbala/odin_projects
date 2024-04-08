# frozen_string_literal: true

class GoodDog
  attr_accessor :name, :height, :weight

  def initialize(name, height, weight)
    @name = name
    @height = height
    @weight = weight
  end

  def speak
    "#{name} says Arf!"
  end

  def change_info(name, height, weight)
    self.name = name
    self.height = height
    self.weight = weight
  end

  def info
    "#{name} weighs #{weight} and is #{height} tall."
  end

  def self.what_am_i
    "I'm a GoodDog class!"
  end

  def what_is_self
    self
  end
  puts self
end

sparky = GoodDog.new('Sparky', '12 inches', '10 lbs')
puts sparky.info

sparky.change_info('Spartacus', '24 inches', '45 lbs')
puts sparky.info

puts GoodDog.what_am_i
p sparky.what_is_self
