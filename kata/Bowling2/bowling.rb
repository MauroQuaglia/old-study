require '../frame'

class Bowling

  def initialize
    @frame = Frame.new
  end

  def current_frame
    @frame
  end

  def frames
    [current_frame]
  end

end