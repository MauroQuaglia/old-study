require_relative '../lib/ticket'

class WeeklyTicket < Ticket

  def scan_at(time)
    super(time) do |times|
      times.last.year == times.first.year && times.last.cweek == times.first.cweek ? message('OK') : message('KO')
    end
  end

  private

  def message(value)
    "DISPLAY WEEKLY\nBEEP WEEKLY #{value}"
  end

end