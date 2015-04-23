require 'test/unit'
require_relative 'show'

class GroupingTest < Test::Unit::TestCase

  def setup
    @show = Show.new
  end

  def test_1
    @show.regex('banana', /an+/)
    @show.regex('banana', /a(n)+/)
    @show.regex('banana', /(an)+/)
  end

  def test_2
    value = 'red ball blue sky'

    @show.regex(value, /blue|red/) # red
    @show.regex(value, /(blue|red) \w/) # red b
    @show.regex(value, /(blue|red) \w+/) # red ball
  end

  def test_3
    value = 'red ball blue sky'

    @show.regex(value, /(red|blue) \w+/) # red ball
    @show.regex(value, /red|blue \w+/) # red
    @show.regex(value, /red (ball|angry) sky/) # red
  end

  def test_4
    p /(\d\d):(\d\d)/ =~ '12:50' # 0
    p "Hour #{$1}, minute #$2" # non serve mettere le graffe all'interpolation se uso le globali.

    p /((\d\d):(\d\d))/ =~ '12:50' # 0
    p "Time #$1 - Hour #$2, minute #$3" #Time 12:50 - Hour 12, minute 50; la parentesi più esterna mi riempie $1 con tutto il match

    p /((\d\d):(\d\d))(..)/ =~ '12:50am' #ricordiamo che . significa qualsiasi carattere, quindi qua diciamo due caratteri qualsiasi
    p "#$1 - #$2 - #$3 - #$4"
  end

  def test_5
    md = /(\d\d):(\d\d)/.match('12:50')
    p "Hour #{md[1]}, minute #{md[2]}"

    md = /((\d\d):(\d\d))/.match('12:50')
    p "Time #{md[1]} - Hour #{md[2]}, minute #{md[3]}"

    md = /((\d\d):(\d\d))(..)/.match('12:50am')
    p "#{md[1]} - #{md[2]} - #{md[3]} - #{md[4]}"
  end

  def test_6
    @show.regex('hello', /(\w)\1/) # un carattere seguito da se stesso --> ll
    @show.regex('mississipi', /(\w+)\1/) # più gruppi di caratteri che si ripetono --> ississ
  end

  def test_7
    @show.regex('hello', /(?<name>\w)\k<name>/) # un carattere seguito da se stesso --> ll
    @show.regex('mississipi', /(?<value>\w+)\k<value>/) # più gruppi di caratteri che si ripetono --> ississ
    @show.regex('banana', /(?<name>\w+)\k<name>/)
  end

  def test_8
    /(?<hour>\d\d):(?<minute>\d\d)/ =~ '12:50'
    p "#{hour} - #{minute}"
  end

end