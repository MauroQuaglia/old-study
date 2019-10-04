module Moral
  VERY_BAD = 0
  BAD = 1

  #definire il nome Moral.sin serve per eliminare le ambiguità con Tring.
  def Moral.sin(x)
    p x
  end

  # In questo caso invece c'è ambiguità.
  def cos(x)
    p "#{x} in cos di Moral!"
  end

end