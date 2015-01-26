# encoding: utf-8
require 'test/unit'

class EncodingTest < Test::Unit::TestCase

  def test_1
    s = 'δog'
    puts "Encoding of [#{s.inspect}] in [#{RUBY_VERSION}] is [#{s.encoding}]"
  end

  def test_2
    p ?a
    p ?\n
    p ?\C-a
    p ?\M-a
  end

  def test_3
    file = File.open('/home/xpuser/studio/mauro-quaglia/studio/kata/RubyRookie/StandardTypes/songdata.csv')
    while(line = file.gets)
      p line
    end
  end

  def test_4
    song = Struct.new(:title, :name, :length) # definisco una classe al volo

    # meglio usare il blocco così poi ruby chiude il file
    File.open('/home/xpuser/studio/mauro-quaglia/studio/kata/RubyRookie/StandardTypes/songdata.csv') do |song_file|
      songs = []
      song_file.each do |line|
        file, length, name, title = line.chomp.split(/\s*\|\s*/)
        songs << song.new(title, name, length)
      end
    puts songs[1]
    end
  end


end


class Reader

  def read
    file = File.open('songdata.csv')
    while(line = file.gets)
      p line
    end
  end

end