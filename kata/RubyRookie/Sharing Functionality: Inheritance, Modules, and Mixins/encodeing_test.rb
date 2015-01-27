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
        name.squeeze!(' ')
        min, sec = length.scan(/\d+/)
        songs << song.new(title, name, min.to_i * 60 + sec.to_i)
      end
    puts songs[1]
    end
  end

  def test_5
    a, b = [1, 2]
    print a, b
  end

  def test_6
    p '1:2'.split(/:/)
    p '1:2'.scan(/\d+/)
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