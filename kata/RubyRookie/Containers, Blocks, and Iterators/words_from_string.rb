class WordFromString

  def word_from_string(value)
    value.downcase.scan(/[\w']+/) #ritorna un array con i match della regex, cioè parole e apici
  end

  def count_frequency(value)
    words = {}
    tokens = word_from_string(value)
    tokens.each do |token|
      words.has_key?(token) ? words[token] += 1 : words[token] = 1
    end
    words
  end

  def count_frequency_2(value)
    words = Hash.new(0)
    tokens = word_from_string(value)
    tokens.each do |token|
      words[token] += 1 # words[token] = words[token] + 1
    end
    words
  end

end