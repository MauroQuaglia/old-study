RSpec.describe Array, 'with some element' do

  def prepare_array
    [1, 2, 3]
  end

  subject{prepare_array}

  it 'has 3 elements' do
    expect(subject).to eq([1, 2, 3])
  end

end