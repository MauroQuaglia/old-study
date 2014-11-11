require 'test-unit'
require_relative '../turnstile'
require_relative '../one_way_ticket'

class TurnstileTest < Test::Unit::TestCase

  def test_scan_ticket
    assert_equal 'BEEP OK', Turnstile.new.scan(OneWayTicket.new)
  end

end