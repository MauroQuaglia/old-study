require 'rspec/expectations'

RSpec.configure do |config|

  config.before(:suite) do
    puts 'before suite'
  end

  config.before(:context) do
    puts 'before context'
  end

  config.before(:example) do
    puts 'before example'
  end

  config.after(:example) do
    puts 'after example'
  end

  config.after(:context) do
    puts 'after context'
  end

  config.after(:suite) do
    puts 'after suite'
  end

end

# suite e context
RSpec.describe 'suite-1' do

  # Ricordiamo che questa è solo la sintassi. il before context e definito per tutto il gruppo.
  context 'context-1' do

    #test
    it 'test-1' do
      p 'suite-1 context-1 test-1'
    end

    #test
    it 'test-2' do
      p 'suite-1 context-1 test-2'
    end

  end

  context 'context-2' do

    it 'test-1' do
      p 'suite-1 context-2 test-1'
    end

    it 'test-2' do
      p 'suite-1 context-2 test-2'
    end

  end

end