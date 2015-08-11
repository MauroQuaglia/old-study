RSpec.describe Array do

  it 'should be empty' do
    expect(subject).to be_empty
  end

  it { should be_empty }

  it { is_expected.to be_empty }

end

RSpec.describe Array do
  subject { [1, 2, 3]}

  it 'should not be empty' do
    expect(subject).not_to be_empty
  end

  it { should_not be_empty }

  it { is_expected.not_to be_empty }

end