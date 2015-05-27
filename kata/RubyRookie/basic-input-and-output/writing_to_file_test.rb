require 'test/unit'

class WritingToFileTest < Test::Unit::TestCase

  def test_1
    File.open('my-file-2.txt', 'w') do |file|
      file.puts 'ciao'
    end
  end

  def test_2
    p "\127 - \555 - \100"
    p '' << 127 << 555 << 100
    p [127, 555, 100].pack('c*')
  end

  def test_3
    STDOUT << 99 << ' red balloons '
  end

end
