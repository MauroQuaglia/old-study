class Roman

  def initialize
    @roman = {
        'I' => 1,
        'V' => 5
    }
  end

  def to_decimal(roman)
    return @roman[roman] if @roman.has_key?(roman)

    sum = 0
    for i in 0...roman.length - 1
      sum += sign(roman[i], roman[i+1]) * @roman[roman[i]]
    end
    sum + @roman[roman.split(//).last]
  end


  def sign(first, second)
    @roman[first] < @roman[second] ? -1 : 1
  end


end