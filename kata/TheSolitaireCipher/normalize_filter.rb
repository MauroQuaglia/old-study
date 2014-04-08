class NormalizeFilter

  def do(value)
    value << 'x' until value.length.divmod(5).last.zero?
    value
  end

  def undo(value)
    value
  end

end