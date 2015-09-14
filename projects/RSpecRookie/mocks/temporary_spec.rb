RSpec.describe "Creating a double in a before(:context) hook" do
  before(:context) do
    @dbl = double(:foo => 13)
  end

  it "fails before it gets to the examples" do
    expect(@dbl.foo).to eq(13)
  end
end