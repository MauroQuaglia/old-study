class Decimal2

  def initialize
    @roman2 = [
        {1 => 'I'},
        {4 => 'IV'},
        {5 => 'V'},
        {9 => 'IX'},
        {10 => 'X'},
        {40 => 'XL'},
        {50 => 'L'},
        {90 => 'XC'},
        {100 => 'C'},
        {400 => 'CD'},
        {500 => 'D'},
        {900 => 'CM'},
        {1000 => 'M'}
    ]

  end

  def to_roman(decimal, roman='', index=@roman2.length-1)
    quotient = decimal / decimal(index)
    rest = decimal - quotient * decimal(index)

    roman += roman(index) * quotient

    index.zero? ? roman : to_roman(rest, roman, index-1)
  end

  def roman(i)
    @roman2[i].values.first
  end

  def decimal(i)
    @roman2[i].keys.first
  end

end
