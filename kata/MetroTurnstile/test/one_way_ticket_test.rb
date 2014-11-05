require 'test-unit'
require 'time'
require_relative '../one_way_ticket'

class OneWayTicketTest < Test::Unit::TestCase

  def setup
    @ticket = OneWayTicket.new
    @now = Time.now
  end

  def test_obliteration_of_one_way_ticket_valid
    assert_equal 'BEEP OK', @ticket.obliterated_at(@now)
  end

  def test_obliteration_of_one_way_ticket_valid_still_valid
    assert_equal 'BEEP OK', @ticket.obliterated_at(@now)
    assert_equal 'BEEP OK', @ticket.obliterated_at(@now + 72 * 60)
  end

  def test_obliteration_of_one_way_ticket_invalid
    assert_equal 'BEEP OK', @ticket.obliterated_at(@now)
    assert_equal 'BEEP KO', @ticket.obliterated_at(@now + 73 * 60)
  end

end