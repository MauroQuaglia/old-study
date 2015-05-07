class ScoreKeeper

  def initialize
    @total_score = @count = 0
  end

  def <<(score)
    @total_score += score
    @count += 1
    self
  end

  def []=(*params) #[] = 1, 2
    value = params.pop # Prende l'ultimo dell'array params.
    puts "Indexed with #{params.join(', ')}"
    puts "Value = #{value.inspect}"
  end

  def average
    fail 'No score' if @count.zero?
    Float(@total_score) / @count # Float è più generale, quindi quello che torna sarà sempre Float.
  end

end
