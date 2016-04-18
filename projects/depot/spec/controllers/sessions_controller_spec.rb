require 'rails_helper'

RSpec.describe SessionsController do
  fixtures :users

  describe 'GET #new' do

    it 'returns http success' do
      get(:new)

      expect(response).to have_http_status(:success)
    end

  end

  describe 'GET #create' do

    it 'returns http success' do
      post(:create, name: 'Mauro', password: 'xyz')

      expect(response).to have_http_status(:found)
      expect(response).to redirect_to(admin_url)
    end

  end

  describe 'GET #destroy' do

    it 'returns http success' do
      get(:destroy)

      expect(response).to have_http_status(:found)
      expect(response).to redirect_to(store_url)
    end

  end

end
