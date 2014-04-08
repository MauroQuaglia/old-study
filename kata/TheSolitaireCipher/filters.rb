class SplitCharacterFilter
  def perform(value)
    value.scan(/.{1,5}/).join(' ')
  end
end


class NumberGeneratorFilter
  def initialize
    @values=[4, 23, 10, 24, 8, 25, 18, 6, 4, 7, 20, 13, 19, 8, 16, 21, 21, 18, 24, 10]
  end

  def perform(numbers)
    @values.map.with_index{|v,i| value=v+numbers[i]; value > 26 ? value-26 : value }
  end
end


