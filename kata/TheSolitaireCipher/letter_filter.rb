class LetterFilter

  def do(value)
    value.gsub(/[^a-z]/, '')
  end

  def undo(value)
    value
  end

end