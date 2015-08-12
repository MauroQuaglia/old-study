RSpec.describe "something" do
  it "does something that passes" do
    expect(5).to eq(5)
  end

  it "does something that fails" do
    expect(5).to eq(4)
  end

  it "does something that is pending", :pending => true do
    expect(5).to be < 3
  end

  it "does something that is skipped", :skip => true do
    expect(5).to be < 3
  end
end