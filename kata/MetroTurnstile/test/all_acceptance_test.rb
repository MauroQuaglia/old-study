require 'test-unit'
require 'date'
require_relative '../turnstile'

class  AllAcceptanceTest < Test::Unit::TestCase

  def now
    DateTime.now.strftime('%d/%m/%Y %H:%M:%S')
  end

end