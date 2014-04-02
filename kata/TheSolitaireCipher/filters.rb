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
    while value.last.length < 5
      value.last << 'X'
    end
    value.join(' ')
  end
end

