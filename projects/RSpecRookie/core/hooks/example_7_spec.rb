RSpec.describe 'around filter' do

  around(:example) do |example|
    p '1'
    example.run
    p '2'
  end

  before(:context) do
    p 'before'
  end

  after(:context) do
    p 'after'
  end

  it 'the example' do
    p 'this is the example'
  end

end

# before - 1 - this is the example - 2 - after