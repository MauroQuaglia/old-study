class ScoreKeeper

  def initialize
    @total_score = @count = 0
    @members = []
  end

  def <<(score)
    @total_score += score
    @count += 1
    self
  end

  def [](p1, p2, p3)
    @members << p1 << p2 << p3
    puts @members
  end

  def average
    fail 'No score' if @count.zero? # lancia un RuntimeError di default... se ne volgio lanciare un altra basta che gli passo il nome dell'eccezione
    Float(@total_score) / @count # dato che float è più generale, comanda il float, quindi poi quello che torna è sempre float.
  end

end

class ScoreKeeper2
  def []=(*params)

  end
end