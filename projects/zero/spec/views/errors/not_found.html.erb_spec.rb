require 'rails_helper'

describe 'errors/not_found.html.erb'  do

  it 'should render not found message' do
    render
    
    expect(rendered).to have_selector('h1', text: 'Pagina non trovata!')
  end

end
