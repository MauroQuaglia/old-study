class ScoreKeeper

  def initialize
    @total_score = @count = 0
  end

  def <<(score)
    @total_score += score
    @count += 1
    self
  end

  def []=(key, value)
    puts "Indexed with #{key}"
    puts "Value = #{value}"
  end

  def average
    fail 'No score' if @count.zero?
    Float(@total_score) / @count # Float è più generale, quindi quello che torna sarà sempre Float.
  end

end
