require 'gserver'

class LogServer < GServer

  def initialize
    super(12345)
  end

  def serve(client)
    # quando chiamo telnet il client è la console e mi aspetto che faccia il puts sulla console...
    client.puts 'ciao'
  end

end