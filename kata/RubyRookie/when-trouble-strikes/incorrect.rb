class Incorrect
  attr_accessor :one, :two

  def initialize
    one = 1 # non va, imposta una variabile locale, ma io ho solo dichiarato due setter che l'hanno al loro interno!
    self.two = 2
  end

end