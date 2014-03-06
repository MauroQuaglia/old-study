require '../frame'

class Bowling

  def shots(shots)
    @shots = shots
  end

  def frame(i)
    Frame.new(@shots)
  end


end