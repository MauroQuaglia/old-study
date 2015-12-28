require 'rails_helper'

RSpec.describe CapybaraController do

  it 'returns http success' do
    get :index
    expect(response).to have_http_status(:success)
  end

end
