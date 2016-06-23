require_relative '../lib/one_way_ticket'
require_relative '../lib/daily_ticket'
require_relative '../lib/weekly_ticket'

class TicketShop

  TICKETS = {
      ONEWAY: OneWayTicket.new,
      DAILY: DailyTicket.new,
      WEEKLY: WeeklyTicket.new,
  }

  def self.buy(type)
    TICKETS[type]
  end

end