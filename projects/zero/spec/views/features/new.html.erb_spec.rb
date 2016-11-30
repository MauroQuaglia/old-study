require 'rails_helper'

RSpec.describe "features/new", type: :view do
  before(:each) do
    assign(:feature, Feature.new(
      :title => "MyString",
      :description => "MyText"
    ))
  end

  it "renders new feature form" do
    render

    assert_select "form[action=?][method=?]", features_path, "post" do

      assert_select "input#feature_title[name=?]", "feature[title]"

      assert_select "textarea#feature_description[name=?]", "feature[description]"
    end
  end
end
