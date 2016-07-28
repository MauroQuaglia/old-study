require 'rails_helper'

RSpec.describe "meridians/new", type: :view do
  before(:each) do
    assign(:meridian, Meridian.new(
      :name => "MyString"
    ))
  end

  it "renders new meridian form" do
    render

    assert_select "form[action=?][method=?]", meridians_path, "post" do

      assert_select "input#meridian_name[name=?]", "meridian[name]"
    end
  end
end
