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

# suite
RSpec.describe 'suite-1' do

  #Vede context ed esegue before-context.
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

  #Non esegue più before-context, è già stato eseguito.
  context 'context-2' do

    #test
    it 'test-1' do
      p 'suite-1 context-2 test-1'
    end

    #test
    it 'test-2' do
      p 'suite-1 context-2 test-2'
    end

  end

end