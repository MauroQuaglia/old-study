class Shots

  def initialize(shots)
    @shots = []
    shots.each_with_index { |v, i| i%2==0 && v==10 ? @shots.push(v).push(nil) : @shots.push(v) }
  end

  def at_frames(number)
    i=number-1
    @shots[i*2..(i*2)+1]
  end

end