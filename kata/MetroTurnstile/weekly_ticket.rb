class WeeklyTicket

  def initialize
    @times = []
  end

  def scan_at(time)
    @times << time

    @times.last.cweek == @times.first.cweek ? "DISPLAY WEEKLY\nBEEP WEEKLY OK" : "DISPLAY WEEKLY\nBEEP WEEKLY KO"
  end

end