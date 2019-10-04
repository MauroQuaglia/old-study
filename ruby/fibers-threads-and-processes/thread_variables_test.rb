require 'test/unit'

class ThreadVariablesTest < Test::Unit::TestCase

  def test_1
    count = 0

    threads = 10.times.map do |i|
      Thread.new do
        Thread.current[:my_count] = count
        count += 1
      end
    end

    threads.each { |t| t.join; print(t[:my_count], ',') }
    puts "count = #{count}"
  end


end

