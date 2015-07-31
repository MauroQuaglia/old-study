RSpec.describe 'before and after callbacks' do

  # Prima di tutti i test.
  before(:context) do
    puts 'outer before context'
  end

  example 'in outer group' do
    puts 'outer example'
  end

  # Alla fine di tutti i test.
  # In sostanza è come se fosse il contesto della suite.
  after(:context) do
    puts 'outer after context'
  end

  describe 'nested group' do

    before(:context) do
      puts 'inner before context'
    end

    example 'in nested group' do
      puts 'inner example'
    end

    after(:context) do
      puts 'inner after context'
    end

  end

end