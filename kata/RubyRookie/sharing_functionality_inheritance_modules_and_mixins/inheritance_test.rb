require 'test/unit'
require_relative 'parent'
require_relative 'child'
require_relative 'person'

class MyTest < Test::Unit::TestCase

  def test_1
    puts Parent.new.say_hello
    puts Parent.superclass

    puts Child.new.say_hello
    puts Child.superclass
  end

  def test_2
    puts Parent.superclass
    puts Object.superclass
    puts BasicObject.superclass
    puts BasicObject.superclass
    puts BasicObject.superclass.inspect
  end

  def test_3
    puts Person.new('Mauro').to_s
  end

  def test_4
    child = Child.new
    puts child.my_test 'one', 'two'
  end

  def test_5
   Child.new
  end

end