require 'test-unit'
require 'date'
require_relative '../daily_ticket'

class DailyTicketTest < Test::Unit::TestCase

  def setup
    @ticket = DailyTicket.new
  end

  def test_scan_daily_ticket_valid
    assert_equal "DISPLAY DAILY\nBEEP DAILY OK", @ticket.scan_at(Date.today)
  end

  def test_scan_daily_ticket_still_valid
    morning = Time.new(2014, 12, 25, 10, 00, 00)
    afternoon = Time.new(2014, 12, 25, 15, 00, 00)

    assert_equal "DISPLAY DAILY\nBEEP DAILY OK", @ticket.scan_at(morning)
    assert_equal "DISPLAY DAILY\nBEEP DAILY OK", @ticket.scan_at(afternoon)
  end

  def test_scan_daily_ticket_expired
    today = Time.new(2014, 12, 25, 23, 59, 30)
    tomorrow = today + 60

    assert_equal "DISPLAY DAILY\nBEEP DAILY OK", @ticket.scan_at(today)
    assert_equal "DISPLAY DAILY\nBEEP DAILY KO", @ticket.scan_at(tomorrow)
  end

end