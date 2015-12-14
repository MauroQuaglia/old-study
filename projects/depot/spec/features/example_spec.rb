require 'rails_helper'

RSpec.describe 'My behaviour' do

  xit 'should get index' do
    visit '/'

    #expect(response).to have_http_status(:success)
    expect(page).to have_css('#columns #side a')
    #expect(response.body).to have_css('.breadcrumbs li:first', text: 'TrovaPrezzi')
  end

end