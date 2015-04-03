module Trig
  PI = 3.14

  # module method: metodo che inizia con il nome del modulo.
  def Trig.sin(x)
    p x
  end

  # questo non è un module method, ma semplicemente un method.
  def cos(x)
    p "#{x} in cos di Trig!"
  end

end