require 'test-unit'
require 'time'
require_relative '../one_way_ticket'

class OneWayTicketTest < Test::Unit::TestCase

  def setup
    @ticket = OneWayTicket.new
    @now = Time.now
  end

  def test_scan_now
    assert_equal ok, @ticket.scan_at(@now)
  end

  def test_scan_when_still_valid
    assert_equal ok, @ticket.scan_at(@now)
    assert_equal ok, @ticket.scan_at(@now + 71 * 60)
  end

  def test_scan_when_expired
    assert_equal ok, @ticket.scan_at(@now)
    assert_equal ko, @ticket.scan_at(@now + 72 * 60)
  end

  def ok
    'BEEP OK'
  end

  def ko
    'BEEP KO'
  end

end