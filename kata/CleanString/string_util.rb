class StringUtil
  EMPTY = ''
  BLANK = ' '

  def normalizeSpaces(value)
    result = EMPTY

    for i in (0...value.length)
      result += value[i] if (value[i] != BLANK || value[i+1] != BLANK)
    end

    result[0]=EMPTY if result[0] == BLANK
    result[result.length-1]=EMPTY if result[result.length-1] == BLANK

    result
  end

end
