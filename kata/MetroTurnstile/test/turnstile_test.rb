require 'test-unit'
require 'time'
require_relative '../one_way_ticket'
require_relative '../turnstile'

class TurnstileTest < Test::Unit::TestCase

  def test_scan_one_way_ticket
    turnstile = Turnstile.new
    one_way_ticket = OneWayTicket.new

    assert_equal 'BEEP DAILY OK', turnstile.scan(one_way_ticket)
  end



end