RSpec.describe 'around filter' do

  around(:example) do |example|
    p '1'
    example.run
    p '2'
  end

  before(:example) do
    p 'before'
  end

  after(:example) do
    p 'after'
  end

  it 'the example' do
    p 'this is the example'
  end

end

# 1 - before - this is the example - after - 2