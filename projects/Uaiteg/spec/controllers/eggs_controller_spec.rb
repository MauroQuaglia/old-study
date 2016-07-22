require 'rails_helper'

RSpec.describe EggsController do

  describe 'GET #index' do

    it 'should return http success' do
      get :index

      expect(response).to render_template('index')
      expect(response).to have_http_status(:ok)
    end

  end

end
