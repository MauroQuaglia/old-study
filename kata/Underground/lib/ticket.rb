class Ticket

  def initialize
    @times = []
  end

  def scan_at(time, sound)
    yield(@times << time) ? sound + ' KO' :  sound + ' OK'
  end

end