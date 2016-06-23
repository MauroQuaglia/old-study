require_relative '../lib/ticket'

class DailyTicket < Ticket

  def scan_at(time)
    super(time) do |times|
      times.last.day - times.first.day >= 1 ? message('KO') : message('OK')
    end
  end

  private

  def message(value)
    "DISPLAY DAILY\nBEEP DAILY #{value}"
  end

end