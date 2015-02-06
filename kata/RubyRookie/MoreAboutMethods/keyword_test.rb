require 'test/unit'

class KeywordTest < Test::Unit::TestCase
  def test_1
    my_hash(:title, {a: 'ciao', b: 'miao'})
    my_hash(:title, a: 'ciao', b: 'miao')
  end

  def test_2
    SongList.new.search('', a: 'ciao', bb: 'cioa')
  end

  def my_hash(search, params)
    puts search.class
    puts params.class
  end

  def test_3
    SongList2.new.search('')
    SongList2.new.search('', a: 'a')
    SongList2.new.search('', a: 'a', b: 'b')
  end

  def test_4
    SongList2.new.search('')
    SongList2.new.search('', genre: 'a')
    SongList2.new.search('', duration: 300)
    SongList2.new.search('', duration: 300, genre: 'd')

    SongList2.new.search3('')
    SongList2.new.search3('', genre: 'a')
    SongList2.new.search3('', duration: 300)
    SongList2.new.search3('', duration: 300, genre: 'd')
  end

  def test_5
    SongList2.new.search2('')
    SongList2.new.search2('', genre: 'a')
    SongList2.new.search2('', duration: 300)
    SongList2.new.search2('', duration: 300, genre: 'd')
    SongList2.new.search2('', duration: 300, genre: 'd', l: 'lillo')
  end



end

class SongList
  def search(field, options)
    options = {duration: 120}.merge(options)

    if options.has_key?(:duration)
      duration = options[:duration]
      options.delete(:duration)
    end

    if options.has_key?(:genre)
      genre = options[:genre]
      options.delete(:genre)
    end

    # fail ... se non... empty
    fail "Invalid options: #{options.keys.join(',')}" unless options.empty?

  end
end


class SongList2
  def search(field, genre: nil, duration: 120)
    p [field, genre, duration]
  end

  def search3(field, genre=nil, duration=120)
    p [field, genre, duration]
  end

  def search2(field, genre: nil, duration: 120, **rest)
    p [field, genre, duration, rest]
  end
end


