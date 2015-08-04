RSpec.describe 'something' do

  around(:example) do |exp|
    p '1'
    exp.run
    p '2'
  end

  it 'this fails' do
    fail 'Failed!'
  end

end