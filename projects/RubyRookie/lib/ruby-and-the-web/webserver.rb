#! /home/mauro/.rvm/rubies/ruby-2.3.0/bin/ruby
require 'webrick'
include WEBrick

server = HTTPServer.new(Port: 2000, DocumentRoot: File.join(Dir.pwd, '/html'))
trap('INT'){server.shutdown}
server.start

# sudo ./webserver.rb per lanciralo

