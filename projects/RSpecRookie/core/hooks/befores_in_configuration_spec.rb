require 'rspec/expectations'

RSpec.configure do |config|

  config.before(:example) do
    @before_example = 'before_example'
    puts 'example'
  end

  config.before(:context) do
    @before_context = 'before_context'
    puts 'context'
  end

end

RSpec.describe 'stuff in before block' do

  describe 'should be available' do

    it 'in the example' do
      expect(@before_context).to eq('before_context')
      expect(@before_example).to eq('before_example')
    end

  end

end