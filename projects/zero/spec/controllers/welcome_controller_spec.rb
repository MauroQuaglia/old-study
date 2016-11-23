require 'rails_helper'

describe WelcomeController  do

  describe 'GET #home' do

    it 'should return homepage' do
      get(:home)

      expect(response).to render_template(:home)
      expect(response).to have_http_status(:ok)
    end

  end

end
