class Roman

  def initialize
    @roman = {
        'I' => 1,
        'V' => 5,
        'X' => 10,
        'L' => 50,
        'C' => 100,
        'D' => 500,
        'M' => 1000
    }
  end

  def to_decimal(r)
    sum = @roman[r[-1]]
    for i in 0...r.length-1
      sum += sign(r[i], r[i+1])*@roman[r[i]]
    end
    sum
  end

  def sign(first, second)
    @roman[first] < @roman[second] ? -1 : 1
  end

end