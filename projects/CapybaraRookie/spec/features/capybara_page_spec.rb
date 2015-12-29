require 'rails_helper'

RSpec.feature 'Capybara page' do

  it 'respond correctly without javascript' do
    visit '/capybara'

    expect(page).to have_http_status(:success)
    expect(page).to have_css('h1', text: 'Capybara')
  end

  it 'respond correctly with javascript', :js => true do
    visit '/capybara'

    sleep(5)
    #expect(page).to have_http_status(:success)
    #expect(page).to have_css('h1', text: 'Capybara')
  end

end