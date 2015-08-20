require_relative 'helpers'

RSpec.configure do |c|
  c.extend Helpers
end

RSpec.describe 'an example group' do
  puts "Here I see the method: #{help}"

  it 'Here I not see the method' do
    puts help
  end

end