require 'test/unit'
require 'benchmark'

class BenchmarkTest < Test::Unit::TestCase
  include Benchmark

  def test_1
    array = ['a', 'b', 'c']
    hash = {a: 'a', b: 'b', c: 'c'}

    bmbm do |test|

      test.report('Array access:') do
        10_000_000.times{array[0]}
      end

      test.report('Hash access:') do
        10_000_000.times{hash[:a]}
      end

    end

  end

end
