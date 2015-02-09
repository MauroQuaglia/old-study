require 'test/unit'
require_relative 'project_list'

class MyTest
  def initialize
  end
  def val=(val)
    @val = val
    return 99
  end
end

class ProjectListTest < Test::Unit::TestCase

  def test_1
    pl = ProjectList.new
    pl.projects = %w(mauro ganci)
    puts pl[0]
    puts pl[1]
  end

  def test_2
    p c = 6

    b = 5 + a = 6
    p a
    p b
  end

  def test_3
    t = MyTest.new
    result = t.val = 4
    p result

  end

end

