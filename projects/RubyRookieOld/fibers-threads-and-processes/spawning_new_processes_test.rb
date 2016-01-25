require 'test/unit'

class SpawningNewProcessesTest < Test::Unit::TestCase

  def test_1
    `date` # non scrive su console del programma
    system('date') # scrive
  end

  def test_2
    puts `date` # scrive
    puts system('date') # scrive e torna true
  end

end

