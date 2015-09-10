RSpec.describe 'base mock' do

  it 'run' do
    book = double('book')
    puts book.inspect
  end

  it 'run2' do
    book = instance_double('book', :page => 250)
    puts book.inspect
  end

end