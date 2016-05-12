require 'rails_helper'

RSpec.describe 'route categoria.aspx' do

  it 'should return 404 without parameters' do
    get '/categoria.aspx'
    expect(response).to have_http_status(:not_found)

    get '/categoria.aspx?'
    expect(response).to have_http_status(:not_found)
  end

end