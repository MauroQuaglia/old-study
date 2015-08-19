require 'rspec/autorun'

RSpec.describe 1 do
  it "is < 2" do
    expect(1).to be < 2
  end

  it "has an intentional failure" do
    expect(1).to be > 2
  end
end