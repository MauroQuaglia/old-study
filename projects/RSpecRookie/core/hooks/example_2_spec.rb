RSpec.describe 'around hook' do

  around(:example) do |example|
    puts 'first'
    puts example.run
    puts 'second'
  end

  it 'should be executed between first and second' do
    puts '---'
  end
  
end