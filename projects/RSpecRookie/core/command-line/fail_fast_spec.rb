RSpec.describe "fail fast" do

  it "passing test" do; end

  it "failing test" do
    fail
  end

  it "this should not be run" do; end

end