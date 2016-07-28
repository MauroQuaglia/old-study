require 'rails_helper'

RSpec.describe "meridians/show", type: :view do
  before(:each) do
    @meridian = assign(:meridian, Meridian.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
