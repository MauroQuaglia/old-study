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
  end

  def to_roman(decimal)
    s = ''
    for item in @roman.keys.sort.reverse
      integer_part = decimal / item
      s += @roman[item] * integer_part
      decimal = decimal - integer_part * item
    end
    s
  end

end
