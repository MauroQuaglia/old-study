class RemoveNoLetterFilter
  def perform(value)
    value.gsub(/[^a-zA-Z]/, '')
  end
end

class UppercaseFilter
  def perform(value)
    value.upcase
  end
end

class SplitCharacterFilter
  def perform(value)
    value = value.scan(/.{1,5}/)
    value.last << 'X' while value.last.length < 5
    value.join(' ')
  end
end

class LetterToNumberFilter
  def initialize
    @letter=Hash.new
    ('a'..'z').each_with_index{|v,i| @letter[v]=i.succ}
  end

  def perform(value)
    value.downcase.split(//).map{|char| @letter[char]}.compact
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

class NumberToLetterFilter
  def initialize
    @number=Hash.new
    ('A'..'Z').each_with_index{|v,i| @number[i.succ]=v}
  end

  def perform(value)
    value.map{|n| @number[n]}.join('')
  end
end

