require 'rails_helper'

RSpec.describe "meridians/edit", type: :view do
  before(:each) do
    @meridian = assign(:meridian, Meridian.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit meridian form" do
    render

    assert_select "form[action=?][method=?]", meridian_path(@meridian), "post" do

      assert_select "input#meridian_name[name=?]", "meridian[name]"
    end
  end
end
