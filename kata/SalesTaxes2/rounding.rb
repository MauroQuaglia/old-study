class Rounding

  def initialize(sensibility = 0.05)
    @sensibility = sensibility
  end

  def up(x)
    @sensibility == 0 ? x : ((x / @sensibility).ceil) * @sensibility
  end

end