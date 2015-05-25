require 'test/unit'

class OpeningAndClosingFilesTest < Test::Unit::TestCase

  def test_1
    file = File.new('my-file.txt')
    p file.closed?
    file.close
    p file.closed?
  end

  def test_2
    File.open('my-file.txt') do |file|
      p File.basename(file)
      p file.closed? # ci pensa poi il blocco a chiuderlo.
    end
  end

end
