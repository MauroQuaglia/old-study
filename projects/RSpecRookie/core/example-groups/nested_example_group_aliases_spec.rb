RSpec.configure do |c|
  c.alias_example_group_to :detail, :detailed => true
end

RSpec.detail 'a detail' do

  it 'can do some less important stuff' do
  end

end

RSpec.describe 'a thing' do

  describe 'in describe' do

    it 'is important' do
    end

  end

  detail 'in detail' do

    it 'is important' do
    end

  end

end