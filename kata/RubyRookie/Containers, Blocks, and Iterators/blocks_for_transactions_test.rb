require 'test/unit'

class File
  def self.open_and_process(*args)
    f = File.open(*args)
    yield f
    f.close
  end

  def self.my_open(*args)
    f = File.new(*args)
    if block_given?
      yield f
      f.close
    end
    f
  end
end

class BlocksForTransactionsTest < Test::Unit::TestCase

  def test_1
    # esegue il blocco
    # poi esegue anche il codice
    after_yield {p 'mq'}
  end

  def test_2
    File.open_and_process('test.txt', 'r') do |file|
      while line = file.gets
        p line
      end
    end
  end

  def after_yield
    yield
    p 'yield already executed'
  end

end