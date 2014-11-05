require 'time'

class Turnstile

  def initialize(time)
    @time = time
  end

  def obliterates(ticket)
    ticket.obliterated_at(Time.now)
  end

end