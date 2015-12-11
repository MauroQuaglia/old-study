require 'rails_helper'

RSpec.describe StoreController do

  #https://www.relishapp.com/rspec/rspec-rails/docs/controller-specs
  
  it 'should get index' do
    get :index

    expect(response).to have_http_status(:success)
    expect(response).to have_selector('#columns #side a')
  end


end
