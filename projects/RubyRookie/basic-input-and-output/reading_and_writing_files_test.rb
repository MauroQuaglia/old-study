require 'test/unit'

class ReadingAndWritingFilesTest < Test::Unit::TestCase

  def test_1
    file = File.new('my-file.txt')
    p file.gets
  end

  def test_2
    # un altro modo di leggere un file.
    File.open('my-file.txt') do |file|
      while line = file.gets
        p line
      end
    end
  end

end
