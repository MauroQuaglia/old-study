require_relative '../../lib/hello_capybara'

RSpec.describe HelloCapybara do

  it 'should say hello' do
    expect(described_class.new.say).to eq('Hello Capybara!')
  end

  it 'should enabled decoration text by spec helper', :puts_in_spec_helper => :on do
    puts described_class.new.say
  end

  it 'should enabled decoration text by rails helper', :puts_in_rails_helper => :on do
    puts described_class.new.say
  end

end
