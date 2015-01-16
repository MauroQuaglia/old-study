require 'test/unit'

class ComposingModulesTest < Test::Unit::TestCase

  def test_1
    # l'inject posso usarlo in tutte le classi che includono il modulo Enumerable e che definiscono il metodo each.
    # inject applica ai primi due elemnti una certa operazione, il risultato lo applica al terzo elemento e cosi via...
    p [1, 2, 3, 4, 5].inject(:+)
    p ('a'..'z').inject(:+)
  end

end