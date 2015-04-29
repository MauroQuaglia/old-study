require 'test/unit'
require_relative 'show'

class AdvancedAlternativesInConditionsTest < Test::Unit::TestCase

  def test_1
    re = %r{(?:(red)|blue) ball and (?(1)blue|red) bucket}
    # analisi
    # (?: (red)|blue ) Raggruppo il red o blue  ma non lo metto in $, invece in $ ci metto solo se matcha red.
    # (?(1) blue|red) se ho matchato red (1) allora ora devo matchare blue se invece il primo non ha matchato devo matchare red.

    p re.match('red ball and blue bucket')
    p re.match('blue ball and red bucket')
    p re.match('blue ball and blue bucket')
   end

end