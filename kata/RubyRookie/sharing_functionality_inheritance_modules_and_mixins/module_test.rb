require 'test/unit'
require_relative 'trig'
# non è che sto includendo il modulo nella classe, sto solo caricando il file del modulo in questo file
#infatti la chiamata funziona anche qui! Gli devo specificare dove andare a prendere il metodo.
Trig.sin('c')

require_relative 'moral'

class Module1Test < Test::Unit::TestCase

  def test_1
   Trig.sin('XXX')
   Moral.sin('YYY')
   p Trig::PI
  end

  def test_2
    cos('ZZZ') # Dato che non c'è l'include, qui non funziona.
  end

end

class Module2Test < Test::Unit::TestCase
include Trig, Moral

  def test_1
    cos('ZZZ')
  end

end

class Module3Test < Test::Unit::TestCase
  include Moral, Trig

  def test_1
    cos('ZZZ')
  end

end