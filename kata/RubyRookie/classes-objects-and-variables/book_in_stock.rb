class BookInStock
  # lo stato INTERNO è tenuto nelle VARIABILI DI ISTANZA
  # lo stato all'ESTERNO è esposto tramite METODI chiamati ATTRIBUTI.

  #attr_reader :isbn, :price
  #attr_writer :price

  # equivalente alle due righe sopra
  attr_reader :isbn, :xxx # vien
  attr_accessor :price


  def initialize(isbn, price)
    @isbn = isbn
    # Meglio mettere float, altrimenti se gli passo un intero per lui è Fixnum,
    # se gli passo un numero con la virgola per lui è un Float.
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

  # --------------------------------------
  # price_in_cents è come se fosse una variabile di istanza virtuale

  # di fatto è un getter virtuale
  def price_in_cents
    # * 100 per averlo in centesimi
    # il floating non è sempre preciso, manca sembre un qualcosa per difetto.
    # quindi aggiungo un poco e poi con l'integer tronco all'intero.
    # in ruby si fa così
    Integer(price*100 + 0.5)
  end

  # di fatto è un setter virtuale
  def price_in_cents=(cents)
    @price = cents / 100.0
  end

  # --------------------------------------

  #usato dal metodo puts
  def to_s
    #se non metto la chiocciola sto usando gli accessor.
    # infatti se li commento i test falliscono.
    # io preferisco usare la chiocciola.
    "ISBN: #{isbn}, price: #{@price}"
  end

end