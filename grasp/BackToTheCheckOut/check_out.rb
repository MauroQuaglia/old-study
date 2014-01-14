class CheckOut
  attr_reader :total

  def initialize(rules)
    @rules = rules
    @total=0
  end

  def scan(item)
    @total += @rules[item].first
    @rules[item].rotate!
  end

end