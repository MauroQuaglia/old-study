RSpec.describe 'custom filter' do

  it 'run', :if => RUBY_VERSION == '2.1.1' do
    p RUBY_VERSION
  end

  it 'not run', :if => RUBY_VERSION != '2.1.1' do
    p 'no!'
  end

end