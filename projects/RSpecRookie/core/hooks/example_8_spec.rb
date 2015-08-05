module IncludedInConfigureBlock
  def included_in_configure_block
    true
  end
end

RSpec.configure do |c|
  c.include IncludedInConfigureBlock
end

RSpec.describe 'around filter' do

  around(:example) do |example|
    example.run
  end

  it 'run in correct context' do
    expect(included_in_configure_block).to be_truthy
  end

end