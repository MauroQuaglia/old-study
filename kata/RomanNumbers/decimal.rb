class Decimal

  def initialize
    @roman = {
        1000 => 'M',
        900 => 'CM',
        500 => 'D',
        400 => 'CD',
        100 => 'C',
        90 => 'XC',
        50 => 'L',
        40 => 'XL',
        10 => 'X',
        9 => 'IX',
        5 => 'V',
        4 => 'IV',
        1 => 'I'
    }

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

  def to_roman(decimal)
    s = ''
    for item in @roman.keys.sort.reverse
      quotient = decimal / item
      s += @roman[item] * quotient
      decimal = decimal - quotient * item
    end
    s
  end

  def to_roman2(decimal)
    add_symbol(decimal, '', @roman2.length-1)
  end

  private 
  
  def add_symbol(current_decimal, current_roman, index)
    quotient = current_decimal / decimal(index)
    rest = current_decimal - quotient * decimal(index)

    current_roman += roman(index) * quotient

    index.zero? ? current_roman : add_symbol(rest, current_roman, index-1)
  end

  def roman(i)
    @roman2[i].values.first
  end

  def decimal(i)
    @roman2[i].keys.first
  end

end
