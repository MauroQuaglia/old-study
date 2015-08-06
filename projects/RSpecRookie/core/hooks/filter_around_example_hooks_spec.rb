RSpec.configure do |config|

  config.around(:example, :foo => :bar) do |example|
    order << 'x'
    example.run
    expect(order).to eq(['x', 'y'])
  end

end

RSpec.describe 'filter' do
  let(:order) { [] }

  describe 'a group without matching metadata' do

    it 'does not run the hook' do
      expect(order).to be_empty
    end

    it 'runs the hook for an example with matching metadata', :foo => :bar do
      expect(order).to eq(['x'])
      order << 'y'
    end
  end

  describe 'a group with matching metadata', :foo => :bar do

    it 'runs the hook for an example with matching metadata', :foo => :bar do
      expect(order).to eq(['x'])
      order << 'y'
    end

  end

end