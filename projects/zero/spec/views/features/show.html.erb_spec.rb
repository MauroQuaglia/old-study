require 'rails_helper'

RSpec.describe "features/show", type: :view do
  before(:each) do
    @feature = assign(:feature, Feature.create!(
      :title => "Title",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
  end
end
