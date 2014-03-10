require '../frame'

class Bowling

  def initialize(shots)
    @shots = shots
  end

  def frame(number)
    Frame.new(@shots.at_frames(number))
  end

end