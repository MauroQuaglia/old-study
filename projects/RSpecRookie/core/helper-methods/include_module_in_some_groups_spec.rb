require_relative 'helpers'

RSpec.configure do |c|
  c.include Helpers, :foo => :bar
end

RSpec.describe 'an example group' do

  it 'ok', :foo => :bar do
    expect(help).to be(:available)
  end

  it 'ko' do
    expect(help).to be(:available)
  end

end