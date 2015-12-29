require 'spec_helper' # Se uso cose specifiche configurate per rspec è necessario.
require 'rails_helper' # Se uso cose specifiche di Rails è necessario.
require_relative '../../lib/hello_capybara'

RSpec.describe HelloCapybara do

  it 'should say hello' do
    expect(described_class.new.say).to eq('Hello Capybara!')
  end

  # Funziona se carico lo spec_helper.
  it 'should enabled decoration text by spec helper', :puts_in_spec_helper => :on do
  end

  # Funziona se carico il rails_helper.
  it 'should enabled decoration text by rails helper', :puts_in_rails_helper => :on do
  end

end
