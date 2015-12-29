require_relative '../../lib/hello_capybara'

# Che sarebbe come caricarsi il file con il require 'spec_helper'
=begin
RSpec.configure do |config|

  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.around(:example, :puts_in_spec_helper => :on) do |example|
    example.run
    puts 'In spec_helper'
  end

end

=end

RSpec.describe HelloCapybara do

  # Funziona senza caricare spec_helper perché la sintassi expect().to eq() è della gemma rspec-expectations e non usa nessuna
  # configurazione particolare presente nello spec_helper.
  it 'should say hello', :puts_in_spec_helper => :on  do
    expect(described_class.new.say).to eq('Hello Capybara!')
  end

end
