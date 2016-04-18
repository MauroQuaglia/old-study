require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before(:each) do
    assign(:users, [
      User.create!(
        :name => "Namea",
        :password => "zzzz"
      ),
      User.create!(
        :name => "Nameb",
        :password => "rrrr"
      )
    ])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", :text => "Namea".to_s, :count => 1
    assert_select "tr>td", :text => "Nameb".to_s, :count => 1
  end
end
