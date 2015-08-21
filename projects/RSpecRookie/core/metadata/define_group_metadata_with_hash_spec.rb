RSpec.describe 'group with metadata', :foo => 17 do

  it 'access to metadata' do |example|
    puts example.metadata[:foo] #17
  end

end

RSpec.describe 'override', :foo => 17 do

  it 'access to metadata', :foo => :bar do |example|
    puts example.metadata[:foo] #bar
  end

end

RSpec.describe 'override', :foo, :bar do

  it 'access to metadata'  do |example|
    puts example.metadata[:foo] #true
    puts example.metadata[:bar] #true
  end

end