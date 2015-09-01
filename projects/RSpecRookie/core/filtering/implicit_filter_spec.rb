RSpec.describe 'conditional if', :if => true do

  it 'run', :if => true do
    p '1 if true'
  end

  it 'run', :if do
    p '2 if true'
  end

  it 'not run', :if => false do
    p '3 if false'
  end

end

