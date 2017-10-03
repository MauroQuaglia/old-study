require 'rails_helper'

RSpec.describe "foods/index", type: :view do
  before(:each) do
    assign(:foods, [
      Food.create!(
        :name => "Name",
        :energy => "9.99",
        :water => "9.99",
        :carbs => "9.99",
        :fats => "9.99",
        :proteins => "9.99"
      ),
      Food.create!(
        :name => "Name",
        :energy => "9.99",
        :water => "9.99",
        :carbs => "9.99",
        :fats => "9.99",
        :proteins => "9.99"
      )
    ])
  end

  it "renders a list of foods" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
