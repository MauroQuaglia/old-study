class CheckOut

  def initialize(rules)
    @rules = rules
    @total=0
    @items={}
  end

  def scan(item)
    count_item(item)

    @total += @rules[item]
  end


  def total
    # calcolare il totale
    @total
  end

  private

  def count_item(item)
    if @items.key?(item)
      @items[item] + 1
    else
      @items[item] = 0
    end
  end
end