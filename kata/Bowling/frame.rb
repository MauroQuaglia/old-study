class Frame

  def initialize(shots)
    @shots = shots
  end

  def score
    return sum(@shots) if strike
    return sum(@shots) if spare
    sum(@shots[0..1])
  end

  def sum(shots)
    shots.inject { |s, x| s + x }
  end

  def strike
    @shots[0] == 10
  end

  def spare
    @shots[0] + @shots[1] == 10
  end

end