require 'rails_helper'

RSpec.describe "meridians/index", type: :view do
  before(:each) do
    assign(:meridians, [
      Meridian.create!(
        :name => "Name"
      ),
      Meridian.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of meridians" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
