require 'test-unit'
require 'date'
require_relative '../daily_ticket'

class DailyTicketTest < Test::Unit::TestCase

  def setup
    @ticket = DailyTicket.new
  end

  def test_scan_today
    assert_equal ok, @ticket.scan_at(Date.today)
  end

  def test_scan_in_the_same_day
    morning = Time.new(2014, 12, 25, 10)
    afternoon = Time.new(2014, 12, 25, 15)

    assert_equal ok, @ticket.scan_at(morning)
    assert_equal ok, @ticket.scan_at(afternoon)
  end

  def test_scan_in_different_days
    today = Time.new(2014, 12, 25, 23, 59, 30)
    tomorrow = today + 60

    assert_equal ok, @ticket.scan_at(today)
    assert_equal ko, @ticket.scan_at(tomorrow)
  end

  def ok
    "DISPLAY DAILY\nBEEP DAILY OK"
  end

  def ko
    "DISPLAY DAILY\nBEEP DAILY KO"
  end

end