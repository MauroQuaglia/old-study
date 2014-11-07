require 'test-unit'
require 'time'
require_relative '../one_way_ticket'

class OneWayTicketTest < Test::Unit::TestCase

  def setup
    @ticket = OneWayTicket.new
    @now = Time.now
  end

  def test_scan_one_way_ticket_valid
    assert_equal 'BEEP OK', @ticket.scan_at(@now)
  end

  def test_scan_one_way_ticket_still_valid
    assert_equal 'BEEP OK', @ticket.scan_at(@now)
    assert_equal 'BEEP OK', @ticket.scan_at(@now + 71 * 60)
  end

  def test_scan_one_way_ticket_expired
    assert_equal 'BEEP OK', @ticket.scan_at(@now)
    assert_equal 'BEEP KO', @ticket.scan_at(@now + 72 * 60)
  end

end