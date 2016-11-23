require 'rails_helper'

describe 'welcome/home.html.erb' do

  it 'should render welcome message' do
    render

    expect(rendered).to have_selector('h1', text: 'benvenuto')
  end

end