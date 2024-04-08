# frozen_string_literal: true

class Foo
  def to_s
    '42'
  end
end

foo = Foo.new
puts foo
puts "foo is #{foo}"
