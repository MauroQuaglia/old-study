class StringUtil
  BLANK = ' '

  def initialize(value)
    @value = value
  end

  def normalizeSpaces
    result = []

    last=nil
    @value.split(//).each do |current|
      result.push(current) if (last != BLANK || current != BLANK)
      last=current
    end

    result.shift if result.first == BLANK
    result.pop if result.last == BLANK

    result.join
  end

end
