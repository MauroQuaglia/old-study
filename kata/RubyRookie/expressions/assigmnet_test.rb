require 'test/unit'
require_relative 'project_list'

class AssignmentTest < Test::Unit::TestCase

  def test_1
    p a = 1
  end

  def test_2
    a = b = 1 + 2 + 3
    # b = 6, dopo che è stato assegnato, torna 6, per cui a = 6.
    p a, b
  end

  def test_3
    a = (b = 1 + 2) + 3
    p a, b
  end

  def test_4
    list = ProjectList.new
    list.projects = %w(mq ag ss)
    p list[1]
    p list[2]
  end

  def test_5
    test = MyTest.new
    p test.val = 10
  end

end

class MyTest

  def val=(val)
    @val = val
    return 99
  end

end
