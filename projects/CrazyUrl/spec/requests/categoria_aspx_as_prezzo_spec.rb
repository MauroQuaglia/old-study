require 'rails_helper'

RSpec.describe 'route categoria.aspx' do

  it 'should mapped to prezzo when parameter libera' do
    get '/categoria.aspx?libera'
    #expect(response).to have_http_status(:moved_permanently)

=begin
    get '/categoria.aspx?libera='
    expect(response).to have_http_status(:moded_permanently)

    get '/categoria.aspx?libera=nokia'
    expect(response).to have_http_status(:moded_permanently)
=end
  end

end