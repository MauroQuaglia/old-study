RSpec.configure do |config|

  config.before(:example, :before_example) {p 'before example'}
  config.after(:example, :after_example) {p 'after example'}

end

RSpec.describe 'filters' do

  it 'unmatch hook' do
    p 'unmatch hook'
  end

  it 'match before hook', :before_example do
    p 'match before hook'
  end

  it 'match after hook', :after_example do
    p 'match after hook'
  end

  it 'match before and after hook', :before_example, :after_example do
    p 'match before and after hook'
  end

end