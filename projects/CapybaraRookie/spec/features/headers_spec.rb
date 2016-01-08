require 'rails_helper'

RSpec.feature 'Manage headers' do

  it 'webkit', :driver => :webkit do
    page.driver.header('USER_AGENT', 'webkit')

    # Non si riesce a verificare che effettivamente sia settato dal test.
    visit capybara_path
    # save_and_open_page

    expect(page).to have_text('"HTTP_USER_AGENT"=>"webkit"')
  end

  it 'poltergeist', :driver => :poltergeist do
    page.driver.add_headers('USER_AGENT' => 'poltergeist')

    # Si riesce a verificare che effettivamente sia settato dal test.
    puts "Request headers: [#{page.driver.headers}]"

    visit capybara_path
    # save_and_open_page

    expect(page).to have_text('"HTTP_USER_AGENT"=>"poltergeist"')
  end

end