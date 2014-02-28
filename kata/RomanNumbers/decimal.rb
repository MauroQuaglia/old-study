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

    @r = [
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
      integer_part = decimal / item
      s += @roman[item] * integer_part
      decimal = decimal - integer_part * item
    end
    s
  end

  def to_roman2(decimal)
    add_symbol(decimal, '', @r.length-1)
  end

  def add_symbol(d, r, i)
    r += @r[i].values[0] * (d / @r[i].keys[0])
    i >= 1 ? add_symbol( d - (d / @r[i].keys[0]) * @r[i].keys[0], r, i-1) : r
  end

end
