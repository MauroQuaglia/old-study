require 'test/unit'

class Pillola6Test < Test::Unit::TestCase

  def test_1
    # Prendere dal file tutto ciò che sta tra START e END, questi ultimi compresi.
    File.foreach('range.csv') do |line|
      puts line if true
    end
  end

end