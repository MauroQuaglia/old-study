require '../rails_helper'

RSpec.describe 'Bound parameters' do

  it 'all routes' do
    expect{get('\photos')}.to have_http_status(:ok)
  end

  it 'xxx' do

  end
end