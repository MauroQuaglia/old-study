class OneWayTicket

  def initialize
    @times = []
  end

  def scan_at(time)
    @times << time
    @times.last - @times.first >= 72 * 60 ? 'BEEP KO' : 'BEEP OK'
  end

end