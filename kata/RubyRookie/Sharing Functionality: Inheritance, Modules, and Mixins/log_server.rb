require 'gserver'

class LogServer < GServer

  def initialize
    super(12345)
  end

  def serve(client)
    client.puts get_end_of_log_file
  end

  private

  def get_end_of_log_file
    File.open("/var/log/system.log") do |log|
      # devo guardare la classe http://www.ruby-doc.org/core-2.1.5/IO.html#method-i-seek
      log.seek(-500, IO::SEEK_END) # 500 caratteri dalla fine

    end
  end

end