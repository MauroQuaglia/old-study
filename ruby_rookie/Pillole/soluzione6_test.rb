require 'test/unit'

class Soluzione6Test < Test::Unit::TestCase

  def test_1
    File.foreach('range.csv') do |line|
      puts line if line =~ /START/ .. line =~ /END/
    end
  end

end
