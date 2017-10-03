require 'rails_helper'

RSpec.describe "foods/edit", type: :view do
  before(:each) do
    @food = assign(:food, Food.create!(
      :name => "MyString",
      :energy => "9.99",
      :water => "9.99",
      :carbs => "9.99",
      :fats => "9.99",
      :proteins => "9.99"
    ))
  end

  it "renders the edit food form" do
    render

    assert_select "form[action=?][method=?]", food_path(@food), "post" do

      assert_select "input[name=?]", "food[name]"

      assert_select "input[name=?]", "food[energy]"

      assert_select "input[name=?]", "food[water]"

      assert_select "input[name=?]", "food[carbs]"

      assert_select "input[name=?]", "food[fats]"

      assert_select "input[name=?]", "food[proteins]"
    end
  end
end
