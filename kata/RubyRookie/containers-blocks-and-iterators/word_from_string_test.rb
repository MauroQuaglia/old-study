require 'test/unit'
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
    p WordFromString.new.count_frequency_2("But I I I I I didn't inhale, he said... but but but!")
  end

  def test_3
    text = %{ Lorem ipsum dolor sit amet, consectetur adipiscing elit.
    Donec sed est eu tellus facilisis accumsan. Aenean hendrerit ultricies augue, in congue ipsum volutpat vel.
    Curabitur feugiat turpis sit amet suscipit condimentum.
    Sed ac dui eget dui laoreet laoreet eu ac massa.
    Donec vel lorem imperdiet, pharetra lacus eu, sodales sem.
    Sed placerat erat diam.
    Vivamus venenatis tincidunt ex id commodo.
    Sed efficitur sagittis erat, at finibus purus fermentum vel.
    Mauris turpis orci, accumsan sit amet accumsan sit amet, pulvinar aliquet felis.
    Vestibulum luctus nec neque ac aliquet.}

    WordFromString.new.top(text, 5)
  end

end