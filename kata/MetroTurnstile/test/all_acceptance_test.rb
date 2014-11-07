require 'test-unit'
require 'date'
require_relative '../turnstile'

class  AllAcceptanceTest < Test::Unit::TestCase

  def test_xxx
    #18/12/2014 09:10:57
    #puts DateTime.now.strftime('%d/%m/%Y %H:%M:%S')
    f= Time.now
    puts f.strftime('%d/%m/%Y %H:%M:%S')
    puts (f+60).strftime('%d/%m/%Y %H:%M:%S')
    puts f.strftime('%d/%m/%Y %H:%M:%S')
  end


  def test_xxx_2
    #18/12/2014 09:10:57
    #puts DateTime.now.strftime('%d/%m/%Y %H:%M:%S')
    f = Time.new(2014, 12, 25, 23, 59, 30)
    puts f.day
    #puts f.strftime('%d/%m/%Y %H:%M:%S')
    #puts (f+60).strftime('%d/%m/%Y %H:%M:%S')
    #puts f.strftime('%d/%m/%Y %H:%M:%S')
  end

end