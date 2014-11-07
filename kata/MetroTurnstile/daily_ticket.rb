class DailyTicket

  def initialize
    @times = []
  end

  def scan_at(time)
    @times << time
    @times.last.day - @times.first.day >= 1 ? "DISPLAY DAILY\nBEEP DAILY KO" : "DISPLAY DAILY\nBEEP DAILY OK"
  end

end