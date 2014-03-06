class Frame

  def initialize(shots)
    @shots = shots
  end

  def score
    strike? || spare? ? sum(@shots) : sum(@shots[0..1])
  end

  private

  def sum(shots)
    shots.inject { |s, x| s + x }
  end

  def strike?
    @shots.first == 10
  end

  def spare?
    sum(@shots[0..1]) == 10
  end

end