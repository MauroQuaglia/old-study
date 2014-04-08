class ConversionFilter

  def initialize
    @letter_to_number = letter_to_number
    @number_to_letter = number_to_letter
  end

  def do(value)
    value.split(//).map{|c| @letter_to_number[c]}
  end

  def undo(value)
    value.map{|n| @number_to_letter[n]}.join('')
  end

  private

  def letter_to_number
    hash=Hash.new
    ('a'..'z').each_with_index { |v, i| hash[v]=i.succ }
    hash
  end

  def number_to_letter
    hash=Hash.new
    ('a'..'z').each_with_index { |v, i| hash[i.succ]=v }
    hash
  end

  def hash_for
    hash=Hash.new
    ('a'..'z').each_with_index { yield }
    hash
  end

end