require 'rails_helper'

RSpec.feature 'capybara page' do

    xit 'should have heading' do
      visit '/capybara'

      expect(page).to have_css('h1', text: 'Capybara')
    end

end
