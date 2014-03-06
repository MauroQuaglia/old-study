require '../frame'

class Bowling

  def shots(shots)
    @shots = shots
  end

  def frame(number)
    return Frame.new(@shots[0..2]) if number == 1

    Frame.new(@shots)
  end


end