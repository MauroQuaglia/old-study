require 'test/unit'
require_relative 'show'

class PatternBasedSubstitutionTest < Test::Unit::TestCase

  def setup
    @show = Show.new
  end

  def test_1
    value = 'quick brown box'

    p value.sub(/[aeiou]/, '*')
    p value.gsub(/[aeiou]/, '*')

    p value.sub(/\s\S+/, '')
    p value.gsub(/\s\S+/, '')
  end

  def test_2
    value = 'quick brown box'

    p value.sub(/^./) {|match| match.upcase}
    p value.gsub(/[aeiou]/) {|vowel| vowel.upcase}
  end

  def test_3
    value = 'dAvE tHoMaS'

    p value.downcase.gsub(/\b\w/) {|match| match.upcase}
  end

  def test_4
    value = 'cat and dog'

    rep = {'cat' => 'feline', 'dog' => 'canine'}
    rep.default = 'X'

    p value.gsub(/\w+/, rep)
  end

end