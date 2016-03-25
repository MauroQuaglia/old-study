require 'rails_helper'

RSpec.describe GuidedOffersController do

  it 'rejects empty parameters' do
    get :listing
    expect(response).to have_http_status(400)
  end

end