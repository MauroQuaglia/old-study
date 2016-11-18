require 'rails_helper'

describe ErrorsController  do

  describe 'GET #not_found' do

    it 'should return not found page' do
      get(:not_found)

      expect(response).to render_template(:not_found)
      expect(response).to have_http_status(:not_found)
    end

  end

  describe 'GET #internal_server_error' do

    it 'should return internal server error page' do
      get(:internal_server_error)

      expect(response).to render_template(:internal_server_error)
      expect(response).to have_http_status(:internal_server_error)
    end

  end

end
