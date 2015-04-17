require 'test/unit'
require_relative 'show'

class ReservedCharactersClassesTest < Test::Unit::TestCase

  def setup
   @show = Show.new
  end

  def test_1
    @show.regex('price 12 dollari', /[aeiou]/) # il primo match
    @show.regex('price 12 dollari', /[\s]/) # questi li prende
    @show.regex('price 12$ dollaroni', /[$]/) #quelli speciali li posso inserire senza problemi
  end

  def test_2
    value = 'see The PickAxe-page 123'

    @show.regex(value, /[A-F]/) # il primo match è la A di Axe
    @show.regex(value, /[A-Fa-f]/) # match: la prima e di see
    @show.regex(value, /[0-9]/) # match: 1
    @show.regex(value, /[0-9][0-9]/) # match: 12
  end

  def test_3
    value = 'pRice 12 dollarz'

    @show.regex(value, /[A-Z]/) # R
    @show.regex(value, /[^A-Z]/) # p
    @show.regex(value, /[\w]/) # p (qualsiasi carattere, quindi prende il primo)
    @show.regex(value, /[^\w]/) # tutto quello che non è carattere, becca il primo spazio.

    value = 'price 12 dollarz'
    @show.regex(value, /[a-z][^a-z]/) # un carattere seguito da un non carattert: [e ]
  end

end