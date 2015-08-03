RSpec.describe 'before and after callbacks' do

  # Prima di tutti i test del gruppo principale.
  before(:context) do
    puts '1'
  end

  example 'in outer group' do
    puts '2'
  end

  # Alla fine di tutti i test del gruppo principale.
  after(:context) do
    puts '6'
  end

  describe 'nested group' do

    # Prima di tutti i test del gruppo innestato.
    before(:context) do
      puts '3'
    end

    example 'in nested group' do
      puts '4'
    end

    # Alla fine di tutti i test del gruppo innestato.
    after(:context) do
      puts '5'
    end

  end

end