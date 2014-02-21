class Decimal

  def initialize
    @roman = {
        1 => 'I'
    }
  end

  def to_roman(decimal)
    @roman[decimal]
  end

end