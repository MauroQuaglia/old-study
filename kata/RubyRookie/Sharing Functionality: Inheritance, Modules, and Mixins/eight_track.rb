require_relative 'trig'

class EightTrack
  include Trig
  attr_reader :name
  def initialize(name)
    @name = name
  end
end