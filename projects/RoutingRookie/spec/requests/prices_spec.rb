require 'rails_helper'

RSpec.describe 'Prices route' do

  it 'refuse empty category' do
    get('/prezzi_.aspx')
    expect{response}.to have_http_status(:ok)
  end

end