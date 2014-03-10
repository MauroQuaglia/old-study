class Shots

  def initialize(shots)
    @shots = shots.each_with_index { |v, i| shots.insert(i.succ, nil) if strike?(i, v) }
  end

  def at_frames(number)
    i=number-1
    @shots[i*2..(i*2)+1].compact
  end

  private

  def strike?(i, v)
    i%2==0 && v==10
  end

end