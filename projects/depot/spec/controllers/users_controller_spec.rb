require 'rails_helper'

RSpec.describe UsersController do
  #fixtures :users

  describe 'POST #create' do

    it 'should create a user' do
      expect {
        post :create, user: {name: 'Dave', password: 'xyz', password_confirmation: 'xyz'}
      }.to change {
        User.count
      }.by(1)

      expect(response).to redirect_to(users_path)
    end

  end
end

