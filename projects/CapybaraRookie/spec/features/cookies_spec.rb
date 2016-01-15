require 'rails_helper'

RSpec.feature 'Manage cookies' do

  context 'on setting' do

    it 'rack_test', :driver => :rack_test do
      page.driver.browser.set_cookie('driver=rack_test')

      visit capybara_show_cookie_path

      expect(page).to have_css('#cookie', text: 'rack_test')
    end

    it 'selenium', :driver => :selenium do
    end

    it 'webkit', :driver => :webkit do
      page.driver.browser.set_cookie('driver=webkit')

      visit capybara_show_cookie_path


      expect(page).to have_css('#cookie', text: 'webkit')
    end

    it 'poltergeist', :driver => :poltergeist do
      page.driver.set_cookie('driver', 'poltergeist')

      visit capybara_show_cookie_path

      expect(page).to have_css('#cookie', text: 'poltergeist')
    end

  end

  context 'on getting' do

    it 'rack_test', :driver => :rack_test do
    end

    it 'selenium', :driver => :selenium do
    end

    it 'webkit', :driver => :webkit do
    end

    it 'poltergeist', :driver => :poltergeist do
    end

  end

end