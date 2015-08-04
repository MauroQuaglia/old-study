RSpec.describe 'something' do

  around(:example) do |exp|
    puts exp.metadata[:foo]
    exp.run
  end

  it 'does something', foo: 'this is metadata' do
    puts 'this is the example'
  end

end