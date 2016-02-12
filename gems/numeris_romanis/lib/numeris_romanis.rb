class NumerisRomanis

  MAP = {1000 => 'M', 900 => 'CM', 500 => 'D', 400 => 'CD', 100 => 'C', 90 => 'XC',
         50 => 'L', 40 => 'XL', 10 => 'X', 9 => 'IX', 5 => 'V', 4 => 'IV', 1 => 'I'
  }

  def initialize
    @roman = {}
    (1..3999).each do |number|
      @roman[number] = roman_for(number)
    end
  end

  def to_roman(value)
    @roman[value]
  end

  def to_decimal(roman)
    @roman.key(roman)
  end

  private

  def roman_for(value)
    conversion = ''
    MAP.each do |decimal, roman|
      result = value.divmod(decimal)
      conversion << roman * result.first
      value = result.last
    end
    conversion
  end

end