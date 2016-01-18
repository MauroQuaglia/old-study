require 'rails_helper'

RSpec.feature 'Manage cookies' do

  context 'on setting' do

    it 'rack_test', :driver => :rack_test do
      page.driver.browser.set_cookie('driver=rack_test')

      visit get_cookie_path

      expect(page).to have_css('#cookie', text: 'rack_test')
    end

    it 'selenium', :driver => :selenium do
    end

    it 'webkit', :driver => :webkit do
      page.driver.browser.set_cookie('driver=webkit')

      visit get_cookie_path

      expect(page).to have_css('#cookie', text: 'webkit')
    end

    it 'poltergeist', :driver => :poltergeist do
      page.driver.set_cookie('driver', 'poltergeist')

      visit get_cookie_path

      expect(page).to have_css('#cookie', text: 'poltergeist')
    end

  end

  context 'on getting' do

    it 'poltergeist', :driver => :poltergeist do
      visit set_cookie_path

      expect(page.driver.browser.cookies).to have_text('"value"=>"capybara"')
    end

  end

end