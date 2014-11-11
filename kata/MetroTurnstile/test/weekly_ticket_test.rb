require 'test-unit'
require 'date'
require_relative '../weekly_ticket'

class WeeklyTicketTest < Test::Unit::TestCase

  def setup
    @ticket = WeeklyTicket.new
  end

  def test_scan_today
    assert_equal ok, @ticket.scan_at(Date.today)
  end

  def test_scan_in_the_same_week
    monday = Date.new(2014, 10, 20)
    saturday = Date.new(2014, 10, 25)
    sunday = Date.new(2014, 10, 26)

    assert_equal ok, @ticket.scan_at(monday)
    assert_equal ok, @ticket.scan_at(saturday)
    assert_equal ok, @ticket.scan_at(sunday)
  end

  def test_scan_in_the_different_week
    monday = Date.new(2014, 10, 20)
    next_monday = Date.new(2014, 10, 27)

    assert_equal ok, @ticket.scan_at(monday)
    assert_equal ko, @ticket.scan_at(next_monday)
  end

  def ok
    "DISPLAY WEEKLY\nBEEP WEEKLY OK"
  end

  def ko
    "DISPLAY WEEKLY\nBEEP WEEKLY KO"
  end

end