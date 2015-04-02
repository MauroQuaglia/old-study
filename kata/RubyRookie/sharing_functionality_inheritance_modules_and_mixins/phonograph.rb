require_relative 'trig'

class Phonograph
  include Trig
  attr_reader :name
  def initialize(name)
    @name = Trig.sin(Trig::PI)
  end
end