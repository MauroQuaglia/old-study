RSpec.configure do |c|

  c.around(:example) do |exp|
    p '1'
    exp.run
    p '2'
  end

end

RSpec.describe 'around filter' do
  it 'run in order' do
    puts 'example'
  end
end