require 'test-unit'
require 'time'
require_relative '../one_way_ticket'
require_relative '../turnstile'

class TurnstileTest < Test::Unit::TestCase

  def test_xxx
    #18/12/2014 09:10:57
    #puts DateTime.now.strftime('%d/%m/%Y %H:%M:%S')
    f= Time.now
    puts f.strftime('%d/%m/%Y %H:%M:%S')
    puts (f+60).strftime('%d/%m/%Y %H:%M:%S')
    puts f.strftime('%d/%m/%Y %H:%M:%S')
  end


end