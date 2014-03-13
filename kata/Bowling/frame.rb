class Frame

  def initialize(shots)
    @shots = shots.compact.push(0, 0)
  end

  def score
    return @shots.first + @shots[1] + @shots[2] if strike? || spare?
    return @shots.first + @shots[1]
  end

  private

  def sum(shots)
    shots.inject { |s, x| s + x }
  end

  def strike?
    @shots.first == 10
  end

  def spare?
    @shots.first + @shots[1] == 10
  end

end