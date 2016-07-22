require 'rails_helper'

RSpec.describe 'eggs/index.html.erb' do

  it 'should display hello message' do
    render

    expect(rendered).to match(/CIAO/)
  end

end
