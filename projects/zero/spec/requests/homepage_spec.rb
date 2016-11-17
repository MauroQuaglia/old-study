require 'rails_helper'

describe 'Homepage request' do

  it 'should return ok status code' do
    get '/'

    expect(response).to have_http_status(:ok)
  end

end