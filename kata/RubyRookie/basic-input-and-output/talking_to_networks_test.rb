require 'test/unit'
require 'socket'
require 'net/http'

class TalkingToNetworksTest < Test::Unit::TestCase

  def test_1
    # con il socket parlo con un protocollo in locale
    client = TCPSocket.open('127.0.0.1', 'www')
    client.send("OPTIONS /~mauro/ HTTP/1.0\n\n", 0)

    puts client.readlines
    client.close
  end

  def test_2
  # con l'http parlo con il web
   http = Net::HTTP.new('trovaprezzi.it', 80)
   response = http.get('/')

    if response.message == 'OK'
      puts response.body
    end
  end

end
