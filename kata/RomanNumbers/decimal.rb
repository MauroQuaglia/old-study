class Decimal

  def initialize
    @roman = [
        {'d' => 1000, 'r' => 'M'},
        {'d' => 900, 'r' => 'CM'},
        {'d' => 500, 'r' => 'D'},
        {'d' => 400, 'r' => 'CD'},
        {'d' => 100, 'r' => 'C'},
        {'d' => 90, 'r' => 'XC'},
        {'d' => 50, 'r' => 'L'},
        {'d' => 40, 'r' => 'XL'},
        {'d' => 10, 'r' => 'X'},
        {'d' => 9, 'r' => 'IX'},
        {'d' => 5, 'r' => 'V'},
        {'d' => 4, 'r' => 'IV'},
        {'d' => 1, 'r' => 'I'}
    ]
  end


  def to_roman(decimal)
    s = ''
    for item in @roman
      integer_part = decimal / item['d']
      s += item['r'] * integer_part
      decimal = decimal - (integer_part * item['d'])
    end
    s
  end

end

