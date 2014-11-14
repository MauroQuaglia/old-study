require 'test-unit'
require 'date'
require_relative 'time_support'
require_relative '../weekly_ticket'

class WeeklyTicketTest < Test::Unit::TestCase
  include TimeSupport

  def setup
    @ticket = WeeklyTicket.new
  end

  def test_scan_now
    assert_equal ok, @ticket.scan_at(DateTime.now)
  end

  def test_scan_in_the_same_week
    monday = DateTime.new(2014, 10, 20)
    saturday = DateTime.new(2014, 10, 25)
    sunday = DateTime.new(2014, 10, 26)

    assert_equal ok, @ticket.scan_at(monday)
    assert_equal ok, @ticket.scan_at(saturday)
    assert_equal ok, @ticket.scan_at(sunday)
  end

  def test_scan_in_the_different_week
    monday = DateTime.new(2014, 10, 20)
    next_monday = monday + days(7)

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