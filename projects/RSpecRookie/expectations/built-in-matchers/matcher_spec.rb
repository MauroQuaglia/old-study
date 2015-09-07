RSpec.describe 'matchers' do

  it 'eq' do
    # Non Fallisce perchè usa == di Ruby, quindi guarda solo se i due valori sono uguali.
    expect(String.new('a')).to equal(String.new('a'))
  end


end