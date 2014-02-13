class Piece
  attr_reader :type, :price, :imported

  def initialize(type, price, imported)
    @type = type
    @price = price
    @imported = imported
  end
end