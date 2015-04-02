require 'test/unit'
require_relative 'trig'
# non è che sto includendo il modulo nella classe, sto solo caricando il file del modulo in questo file
#infatti la chiamata funziona anche qui! Gli devo specificare dove andare a prendere il metodo.
Trig.sin('c')

require_relative 'moral'

class ModuleTest < Test::Unit::TestCase

  def test_1
   Trig.sin('')
   Moral.sin('')
   p Trig::PI
  end
end