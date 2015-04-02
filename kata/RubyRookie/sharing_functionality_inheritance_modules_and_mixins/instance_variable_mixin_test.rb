require 'test/unit'
require_relative 'observable'

class InstanceVariableMixinTest < Test::Unit::TestCase

  def test_1
    # La variabile definita nel modulo è a disposizione della classe.
    p MyClass.new().test
  end

  def test_2
    p MyClass.new.object_id
    p MyClass.new.my_object_id
  end

  def test_3
    p MyClass.new.my_test
  end

end

class MyClass
  include Observable


  def my_object_id
    object_id
  end

  def my_test
    puts 'classe'
  end





end