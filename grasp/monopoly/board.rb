class Board
  def initialize
    @squares=[
        Square.new('Via'),
        Square.new('Sud'),
        Square.new('Prigione'),
        Square.new('Ovest'),
        Square.new('Parcheggio'),
        Square.new('Nord'),
        Square.new('Transito'),
        Square.new('Est')
    ]
  end

  def get_square name
    @squares.find { |item| item.name == name }
  end
end