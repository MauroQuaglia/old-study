require_relative 'one_way_ticket'
require_relative 'daily_ticket'
require_relative 'weekly_ticket'

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