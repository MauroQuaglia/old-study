class BowlingStuff

  def initialize
    @current_score=[]
  end

  def pins_knocked_down(number)
    @current_score.push(number)
  end

  def score
    @current_score.inject { |sum, x| sum + x }
  end

  def info
    "Frame 1 - Score: #{score}"
  end

  #def info
  #  'Frame '+ frame + ' - Shot ' + shot + '; Pins knocked down: ' + pins
  #end
  #
  #private
  #
  #def frame
  #  (((@current_score.length-1) / 2)+1).to_s
  #end
  #
  #def shot
  #  @current_score.length.odd? ? '1' : '2'
  #end
  #
  #def pins
  #  @current_score.last.to_s
  #end

end