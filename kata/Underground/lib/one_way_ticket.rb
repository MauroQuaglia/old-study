require_relative '../lib/ticket'

class OneWayTicket < Ticket

  def scan_at(time)
    super(time) do |times|
      times.last.to_time - times.first.to_time >= 72 * 60 ? message('KO') : message('OK')
    end
  end

  private

  def message(value)
    "BEEP #{value}"
  end

end