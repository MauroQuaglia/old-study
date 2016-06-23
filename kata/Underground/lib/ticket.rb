class Ticket

  def initialize
    @times = []
  end

  def scan_at(time)
    yield(@times << time)
  end

end