require 'rails_helper'

RSpec.describe "features/index", type: :view do
  before(:each) do
    assign(:features, [
      Feature.create!(
        :title => "Title",
        :description => "MyText"
      ),
      Feature.create!(
        :title => "Title",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of features" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
