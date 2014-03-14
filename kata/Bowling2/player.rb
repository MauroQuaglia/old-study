class Player

  def initialize(frame)
    @frame = frame
  end

  def ninepins(down)
    @frame.add_score(down)
  end

end