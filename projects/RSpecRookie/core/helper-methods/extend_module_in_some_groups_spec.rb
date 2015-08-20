require_relative 'helpers'

RSpec.configure do |c|
  c.extend Helpers, :foo => :bar
end

RSpec.describe 'an example group', :foo => :bar do
  puts "#{help}"

  it 'ok' do
    #puts "#{help}"
  end

end

RSpec.describe 'an example group', do
 # puts "#{help}"
end


