class Decimal

  def initialize
    @roman = [
        #{:d => 1000, :r => 'M'},
        #{:d  => 900, :r => 'CM'},
        #{500 => 'D'},
        #{400 => 'CD'},
        #{100 => 'C'},
        #{90 => 'XC'},
        #{50 => 'L'},
        #{40 => 'XL'},
        #{10 => 'X'},
        #{9 => 'IX'},
        {'d' => 5, 'r' => 'V'},
        {'d' => 4, 'r' => 'IV'},
        {'d' => 1, 'r' => 'I'}
    ]
  end


  def to_roman(decimal)
    s = '', r = decimal
    for item in @roman
       s += item['r'] * (r / item['d'])
       r = r - ((r / item['d']) * item['d'])
    end
    s
  end

end

