RSpec.describe 'example as block' do

  before do |example|
    expect(example.description).to eq('is the example object')
  end

  after do |example|
    expect(example.description).to eq('is the example object')
  end

  it 'is the example object' do |example|
    expect(example.description).to eq('is the example object')
  end

end

RSpec.describe 'example as block to let' do

  let!(:the_description) do |example|
    puts "This is the #{example.description}!"
  end

  it 'Same object' do
  end

end

RSpec.describe 'example as block to let 2' do

  let(:the_description) do |example|
    "This is the #{example.description}!"
  end

  it 'Same object' do
    expect(the_description).to eq('This is the Same object!')
  end

end

RSpec.describe 'example as block to let 3' do

  let!(:the_description) do |example|
    puts "This is the #{example.description}!"
    puts "#{example.metadata}!"
    puts "#{example.full_description}!"
    puts " #{example.file_path}!"
    puts "#{example.metadata[:foo]}!" #bar
  end

  it 'Same object', :foo => :bar do
  end

end
