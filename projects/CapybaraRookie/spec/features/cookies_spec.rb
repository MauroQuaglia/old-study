require 'rails_helper'

RSpec.feature 'Manage cookies' do

  context 'on setting' do

    it 'rack_test', :driver => :rack_test do
      puts cookies
      expect(cookies["#{MerchantTracking::COOKIE.v2}a_trusted_merchant"]).to_not be_nil
    end

    it 'selenium', :driver => :selenium do
    end

    it 'webkit', :driver => :webkit do
      page.driver.set_cookie('driver=webkit')

      visit 'capybara-cookie'
      save_and_open_page

      puts page.driver.cookies.inspect
    end

    it 'poltergeist', :driver => :poltergeist do
      page.driver.set_cookie('driver', 'poltergeist')

      visit 'capybara-cookie'

      puts page.driver.cookies
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