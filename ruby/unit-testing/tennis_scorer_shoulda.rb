require 'test/unit'
require 'should'
require_relative 'tennis_scorer'

class TennisScorerTest < Test::Unit::TestCase

  context 'Tennis scorer' do

    setup do
      @ts = TennisScorer.new
    end

    should 'start with a score of 0 - 0' do
      assert_equal('0 - 0', @ts.score)
    end

  end

end