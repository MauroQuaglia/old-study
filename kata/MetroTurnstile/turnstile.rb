require 'time'

class Turnstile

  def scan(ticket)
    ticket.scan_at(Time.now)
  end

end