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

  def test_3
    same =   '12:15-12:45'
    differ = '12:45-13:15'

    @show.regex(same, /(\d\d):\d\d-\1:\d\d/) # ciò che è raggruppato (\d\d) poi va a finire in \1
    @show.regex(differ, /(\d\d):\d\d-\1:\d\d/) # no match
    # Posso usare anche i nomi per rendere più chiara la cosa

    @show.regex(same, /(?<hour>\d\d):\d\d-\k<hour>:\d\d/)
    @show.regex(differ, /(?<hour>\d\d):\d\d-\k<hour>:\d\d/)
  end

  def test_4
    @show.regex('abab', /(.)(.)\1\2/)
    @show.regex('abba', /(.)(.)\k<-1>\k<-2>/)
    @show.regex('abab', /(.)(.)\k<-2>\k<-1>/)
  end

  def test_5
    @show.regex('red sun blue moon', /(?<color>red|green|blue) \w+ \g<color> \w+/)
    @show.regex('red sun white moon', /(?<color>red|green|blue) \w+ \g<color> \w+/)
  end

  def test_6
    re = /
    \A
      (?<brace_expression>
        {
          (
            [^{}]                      # Tutto ciò che non sono graffe
          |                            # oppure
            \g<brace_expression>       # una espressione innestata
          )*
        }
      )
    \Z
    /x

    @show.regex('{12}', re)
    @show.regex('{12 {23}}', re)
  end


end