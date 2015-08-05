RSpec.describe 'if there are multiple around hooks in the same scope' do

  around(:example) do |example|
    puts 'first around hook before'
    example.run
    puts 'first around hook after'
  end

  around(:example) do |example|
    puts 'second around hook before'
    example.run
    puts 'second around hook after'
  end

  it 'this is the test' do
    puts 'test'
  end

end