RSpec.configure do |c|
  c.filter_run :focus => true
end

RSpec.describe "group with :focus", :focus => true do
  it("focused example") {}
  it("focused :if => true example", :if => true) {}
  it("focused :if => false example", :if => false) {}
  it("focused :unless => true example", :unless => true) {}
  it("focused :unless => false example", :unless => false) {}
end

RSpec.describe "group without :focus" do
  it("unfocused example") {}
  it("unfocused :if => true example", :if => true) {}
  it("unfocused :if => false example", :if => false) {}
  it("unfocused :unless => true example", :unless => true) {}
  it("unfocused :unless => false example", :unless => false) {}
end