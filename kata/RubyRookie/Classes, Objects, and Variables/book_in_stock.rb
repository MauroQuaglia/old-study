class BookInStock
  #attr_reader :isbn, :price
  #attr_writer :price

  # equivalente alle due righe sopra
  attr_reader :isbn
  attr_accessor :price


  def initialize(isbn, price)
    @isbn = isbn
    # Meglio mettere float, altrimenti se gli passo un intero per lui è Fixnum, se gli passo un numero con la virgola per lui è un Float.
    # Così è uniforme indipendentemente da cosa gli passo. Float per tutti.
    @price = Float(price)
  end

  def type_of_price
    "type of price: [#{@price.class}]"
  end
  #è un setter! bisogna mettere il segno di =
  # posso usare come short cut l'attr_writer
  #def price=(new_price)
  #  @price=new_price
  #end

  def price_in_cents
    # * 100 per averlo in centesimi
    #Integer(@price*100)
    Integer(price*100 + 0.5)  #il floating non è sempre preciso, manca sembre un qualcosa per difetto. quindi aggiungo un poco e poi con l'integer tronco all'intero.
  end

  def to_s #usato dal metodo puts
    "ISBN: #{isbn}, price: #{price}" #se non metto la chiocciola sto usando gli accessor. infatti se li commento i test falliscono. io preferisco usare la chiocciola.
  end

end