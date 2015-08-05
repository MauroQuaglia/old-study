RSpec.describe 'pending' do

  around(:example) do |example|
    example.run
  end

  it 'implicit pending'

  it 'explicit pending' do
    pending
  end

end