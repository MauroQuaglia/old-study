class Decimal

  def initialize
    @roman = [
        {:d => 1000, :r => 'M'},
        {900 => 'CM'},
        {500 => 'D'},
        {400 => 'CD'},
        {100 => 'C'},
        {90 => 'XC'},
        {50 => 'L'},
        {40 => 'XL'},
        {10 => 'X'},
        {9 => 'IX'},
        {5 => 'V'},
        {4 => 'IV'},
        {1 => 'I'}
    ]
  end


  #def to_roman(decimal)
  #  s = '', r = decimal
  #  for i in @roman
  #    s += (r/@roman[i].key * @roamn[i].value
  #    r = r - (r/@roman[i].key)*@roman[i].key
  #    end
  #    s
  #    end

end

