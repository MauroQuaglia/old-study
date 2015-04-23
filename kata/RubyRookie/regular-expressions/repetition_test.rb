require 'test/unit'
require_relative 'show'

class RepetitionTest < Test::Unit::TestCase

  def setup
    @show = Show.new
  end

  def test_1
    value = 'The moon is made of cheese'

    @show.regex(value, /\w+/) # 1+ parole. trova la prima: The
    @show.regex(value, /\s.*\s/) # spazio, 0+ caratteri, spazio: moon is made of
    @show.regex(value, /\s.*?\s/) # spazio, 0+ caratteri, spazio: moon
    @show.regex(value, /[aeiou]{2,99}/) # oo
    @show.regex(value, /mo?o/) # moo
    @show.regex(value, /mo??o/) # mo
    @show.regex(value, /m*/) #matcha la stringa vuota all'inizio, prima del the. infatti è 0 o + m. il primo match è 0.
  end

  def test_2
    value = 'Mauro Quaglia'

    @show.regex(value, /M*/) # M
    @show.regex(value, /x*/) #

    @show.regex(value, /M+/) # M
    @show.regex(value, /x+/) # nessun match

    @show.regex(value, /M?/) # M
    @show.regex(value, /x?/) #
  end

  def test_3
    value = 'xxx ciao xx'

    @show.regex(value, /xxx/)
    @show.regex(value, /x{2}/)
    @show.regex(value, /x{4,5}/)
    @show.regex(value, /x{2,4}/)
    @show.regex(value, /x{,2}/)
  end

  def test_4
    value = 'xxxxx'

    @show.regex(value, /x.*x/)
    @show.regex(value, /x.*?x/)
  end

end