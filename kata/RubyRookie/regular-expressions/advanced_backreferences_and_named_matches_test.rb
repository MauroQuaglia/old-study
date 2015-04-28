require 'test/unit'
require_relative 'show'

class AdvancedBackreferencesAndNamedMatchesTest < Test::Unit::TestCase

  def setup
    @show = Show.new
  end

  def test_1
    # tre modi diversi di ripetere il gruppo.
    @show.regex('abbc', /(\w)\1/) # un carattere seguito da se stesso --> ll
    @show.regex('abbc', /(?<char>\w)\k'char'/) # un carattere seguito da se stesso --> ll
    @show.regex('abbc', /(?'char'\w)\k<char>/) # un carattere seguito da se stesso --> ll
  end

  def test_2
    @show.regex('xxxabcabcxxx', /(...)\1/) #tre caratteri che si ripetono in successione
  end

end