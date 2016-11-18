require 'rails_helper'

describe 'errors/internal_server_error.html.erb'  do

  it 'should render internal server error message' do
    render
    
    expect(rendered).to have_selector('h1', :text => '500 - internal server error')
  end

end
