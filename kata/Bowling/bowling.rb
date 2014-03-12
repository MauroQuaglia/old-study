require '../frame'

class Bowling

  def initialize(shots)
    @shots = shots
  end

  def frame(number)
    Frame.new(@shots.at_frames(number))
  end

  def total_score
    score=0
    for i in 1..@shots.frames_numbers
      score += frame(i).score
    end
    score
  end

end