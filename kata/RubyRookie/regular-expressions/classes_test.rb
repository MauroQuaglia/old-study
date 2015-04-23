require 'test/unit'
require_relative 'show'

class ClassesTest < Test::Unit::TestCase

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

  def test_4
    value = 'pRice 12 dollarz'
    @show.regex(value, /[0-9]/) # 1
    @show.regex(value, /\d/) # 1
  end

  def test_5
    @show.regex('Über', /(?a)\w+/)
    @show.regex('Über', /(?d)\w+/)
    @show.regex('Über', /(?u)\w+/)

    @show.regex('Über', /(?a)\W+/)
    @show.regex('Über', /(?d)\W+/)
    @show.regex('Über', /(?u)\W+/)
  end

  def test_6
    @show.regex('Price $12.', /[aeiou]/)
    @show.regex('Price $12.', /[[:digit:]]/)
    @show.regex('Price $12.', /[[:space:]]/)
  end

  def test_7
    value = 'see [The PickAxe-page 123]'

    @show.regex(value, /[\[]/)
    @show.regex(value, /[\-]/)

    @show.regex(value, /[\d\-]/) # il primo dei due che incontra è il match del trattino.
  end

  def test_8
    p 'now is the time'.gsub(/[[a-z]&&[^aeiou]]/, '*') # Sostituisco tutte le non vocali.
  end

  def test_9
    value = 'δy / δx = 2πr' # occhio che in realtà il simbolo di derivata parziale è diverso. Qui c'è un delta...
    @show.regex(value, /\p{Alnum}/)
    @show.regex(value, /\p{Digit}/)
    @show.regex(value, /\p{Greek}/)
  end

  def test_10
    value = 'It costs $12.'

    @show.regex(value, /c.s/)
    @show.regex(value, /./)
    @show.regex(value, /\./)
  end

end