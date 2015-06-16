require_relative 'tennis_scorer'

describe 'TennisScorer', 'basic scoring' do

  before(:each) do
    @ts = TennisScorer.new
  end

  it 'should start with a score of 0 - 0' do
    @ts.score.should == '0 - 0'
  end

  it 'should be 0 - 15 if the receiver wins a point'

end