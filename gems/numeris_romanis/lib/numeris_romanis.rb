class NumerisRomanis

  def initialize
    @map = {
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

  def to_roman(value)
    conversion = ''
    @map.each do |decimal, roman|
      result = value.divmod(decimal)
      conversion << roman * result.first
      value = result.last
    end
    conversion
  end

  def to_decimal(roman)

  end


end