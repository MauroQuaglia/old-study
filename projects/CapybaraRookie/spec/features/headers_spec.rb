require 'rails_helper'

RSpec.feature 'Manage headers' do

  context 'request' do

    it 'rack_test', :driver => :rack_test do
      page.driver.header('USER_AGENT', 'rack_test')

      visit capybara_path

      expect(page).to have_text('"HTTP_USER_AGENT"=>"rack_test"')
    end

    it 'selenium', :driver => :selenium do
      # Non supportato.
    end

    it 'webkit', :driver => :webkit do
      page.driver.header('USER_AGENT', 'webkit')

      visit capybara_path

      expect(page).to have_text('"HTTP_USER_AGENT"=>"webkit"')
    end

    it 'poltergeist', :driver => :poltergeist do
      page.driver.add_headers('USER_AGENT' => 'poltergeist')

      visit capybara_path

      expect(page).to have_text('"HTTP_USER_AGENT"=>"poltergeist"')
    end

  end

  context 'response' do

    it 'rack_test', :driver => :rack_test do
      visit capybara_path

      expect(response_headers).to have_text('"X-Frame-Options"=>"SAMEORIGIN"')
    end

    it 'selenium', :driver => :selenium do
      # Non supportato.
    end

    it 'webkit', :driver => :webkit do
      visit capybara_path

      expect(response_headers).to have_text('"X-Frame-Options"=>"SAMEORIGIN"')
    end

    it 'poltergeist', :driver => :poltergeist do
      visit capybara_path

      expect(response_headers).to have_text('"X-Frame-Options"=>"SAMEORIGIN"')
    end

  end

end