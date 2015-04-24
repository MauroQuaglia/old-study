require 'test/unit'
require_relative 'show'

class BackslashSequencesInTheSubstitutionTest < Test::Unit::TestCase

  def setup
    @show = Show.new
  end

  def test_1
    p 'fred:smith'.sub(/(\w+):(\w+)/, '\2:\1' )
    p 'nercpyitno'.gsub(/(.)(.)/, '\2\1') # li cambia a due a due scorrendoli tutti ne -> en, rc -> cr, ...
    # quindi nerc -> encr... e così via.
  end

  def test_2
    p 'fred:smith'.sub(/(?<name1>\w+):(?<name2>\w+)/, '\k<name2>:\k<name1>' )
    p 'nercpyitno'.gsub(/(?<char1>.)(?<char2>.)/, '\k<char2>\k<char1>')
  end

  def test_3
    p 'fred:smith'.sub(/(\w+):(\w+)/, '\+:\+' ) #ultimo gruppo di match: smith
  end

  def test_4
    value =  'a\b\c'

    puts value.gsub(/\\/, '\\\\\\\\')
    puts value.gsub(/\\/, '\&\&')
    puts value.gsub(/\\/){'\\\\'}
  end

end