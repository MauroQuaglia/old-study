class Database

  def self.transaction
    puts 'open transaction'
    yield
    puts 'close transaction'
  end

end

RSpec.describe 'around filter' do

  around(:example) do |example|
    Database.transaction(&example)
  end

  it 'run between open and close transaction' do
    puts 'this is the example'
  end

  it 'run between open and close transaction too' do
    puts 'this is the example too'
  end

end