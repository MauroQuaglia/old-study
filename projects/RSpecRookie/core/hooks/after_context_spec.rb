RSpec.describe 'an error in after(:context)' do

  after(:context) do
    puts 'boom'
  end

  it 'passes this example' do
    puts 'ok'
  end

  it 'passes this example, too' do
    puts 'ok'
  end

end
