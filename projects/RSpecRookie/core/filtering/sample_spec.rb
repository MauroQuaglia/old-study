RSpec.configure do |c|
  c.filter_run_including :focus
  c.filter_run_excluding :broken
end

RSpec.describe 'tests' do

  it 'run', :focus do
    p 'ciao'
  end

  it 'not run' do
    p 'ri ciao'
  end

end

RSpec.describe 'tests 2', :focus do

  it 'run' do
    p 'ri ri ciao'
  end

  it 'not run', :broken do
    p 'ri ri ri ciao'
  end

end
