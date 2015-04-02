require 'gserver'

class LogServer < GServer

  def initialize
    super(12345)
  end

  def serve(client)
    # quando chiamo telnet il client è la console e mi aspetto che faccia il puts sulla console...
    # infatti viene chiamato il metodo serve in automatico
    # telnet 127.0.0.1 12345 oppure http://127.0.0.1:12345/
    client.puts 'ciao'
  end

end