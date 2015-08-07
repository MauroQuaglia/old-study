RSpec.describe Array do

  it 'should be empty' do
    expect(subject).to be_empty
  end

  context 'in context' do
    it 'should be empty too' do
      expect(subject).to be_empty
    end
  end

end

RSpec.describe Array do
  subject { [1, 2, 3] }

  it 'has elements' do
    expect(subject).to eq([1, 2, 3])
  end

end