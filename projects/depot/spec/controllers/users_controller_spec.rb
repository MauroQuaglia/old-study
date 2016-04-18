require 'rails_helper'

RSpec.describe UsersController do

  describe 'POST #create' do

    it 'should create a user' do
      expect {
        post :create,
             user:
                 {name: 'Davex',
                  password: 'xyz',
                  password_confirmation: 'xyz'}
      }.to change {
        User.count
      }.by(1)

      expect(response).to redirect_to(users_path)
    end

  end

  describe 'PATCH #update' do
    # The PATCH method is the correct choice here as you're updating an existing resource - the group ID.
    # PUT should only be used if you're replacing a resource in it's entirety.
  end

end

