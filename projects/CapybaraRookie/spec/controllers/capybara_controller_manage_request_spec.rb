require 'rails_helper'

RSpec.describe CapybaraController do

  it 'returns http success light' do
    request.env['HTTP_USER_AGENT'] = 'Googlebot'

    get :welcome

    expect(request.env['HTTP_USER_AGENT']).to eq('Googlebot')
    expect(request.user_agent).to eq('Googlebot')
  end

end


