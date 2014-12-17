require 'test-unit'
require_relative 'words_from_string'

class WordFromStringTest < Test::Unit::TestCase

  def test_0
   p "But I didn't inhale, he said (emphatically)".split(' ')
   p "But I didn't inhale, he said (emphatically)".scan(/[\w']+/)
  end

  def test_1
    p WordFromString.new.word_from_string("But I didn't inhale, he said (emphatically)")
  end

  def test_2
    p WordFromString.new.count_frequency("But I didn't inhale, he said... but but but!")
    p WordFromString.new.count_frequency_2("But I didn't inhale, he said... but but but!")
  end
end