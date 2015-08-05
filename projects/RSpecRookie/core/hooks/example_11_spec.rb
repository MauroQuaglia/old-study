RSpec.describe 'inner around' do

  around(:example) do |example|
    puts '1a'
    example.run
    puts '1z'
  end

  describe 'second context' do

    around(:example) do |example|
      puts '2a'
      example.run
      puts '2z'
    end

    it 'this is the test' do
      puts 'test'
    end

  end

end

# 1a-2a-test-2z-1z