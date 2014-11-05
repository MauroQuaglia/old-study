require 'time'

class OneWayTicket

  def initialize
    @times = []
  end

  def obliterated_at(time)
    @times << time

    if @times.count == 1
     return 'BEEP OK'
    end

    if (@times.last - @times.first > 72 * 60)
      return 'BEEP KO'
    end

    'BEEP OK'
  end

end