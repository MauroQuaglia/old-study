require '../filters'

class SolitaireCipher

  def initialize(filters)
    @filters = filters
  end

  def encode(value)
    @filters.each{|filter| value=filter.new.perform(value)}
    value
  end
end