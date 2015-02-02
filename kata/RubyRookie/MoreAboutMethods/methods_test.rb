require 'test/unit'

class MethodsTest < Test::Unit::TestCase

  def test_1
   p bool?

   a = 'ciao'
   a.chop
   p a

   b = 'ciao'
   b.chop! # modifica il receiver (cioò la stringa originaria). b riceve il messaggio -> receiver
   p b
  end

  def bool?
    true
  end

  def test_2
    my_params
    my_params 'ciao'
    my_params 'c', 'd'
  end

  def test_3
   my_inside 'a', 'b', 'c', 'd'
  end

  def my_inside(a, *, b)
    puts a + b
  end

   def my_params(*a)
     p a
   end

end