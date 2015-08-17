RSpec.describe "something 1" do
  it "does something" do
    # pass
  end
end

RSpec.describe "something 2" do
  it "does something" do
    fail
  end

  it "has a tag", :fast => true do
    # pass
  end
end

