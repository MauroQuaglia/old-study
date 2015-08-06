RSpec.configure do |config|

  config.before(:example, :foo => :bar) do
    invoked_hooks << :before_examle_foo_bar
  end

end

RSpec.describe 'examples' do
  let(:invoked_hooks){[]}

  it 'unmatched test' do
    expect(invoked_hooks).to be_empty
  end

  it 'matched test', :foo => :bar do
    expect(invoked_hooks.count).to eq(1)
  end

  describe 'matched context', :foo => :bar do

    it 'unmatched test in matched context' do
      expect(invoked_hooks.count).to eq(1)
    end

  end

end
