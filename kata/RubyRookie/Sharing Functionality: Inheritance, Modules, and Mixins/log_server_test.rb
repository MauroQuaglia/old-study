require 'test/unit'
require_relative 'log_server'

class LogServerTest < Test::Unit::TestCase

  def test_1
     server = LogServer.new
     server.start.join
  end

end