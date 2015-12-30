require 'rails_helper'

RSpec.feature 'driver rack_test' do

  it 'is default if no specified' do
    visit '/capybara'
    expect(page.status_code).to be(200)

    puts "Capybara current driver: [#{Capybara.current_driver}]"
  end

  it 'cannot understand javascript' do
    visit '/capybara'
    expect(page.status_code).to be(200)
    expect(page).to have_css('h1', text: 'Capybara')

    sleep(1)
    puts page.evaluate_script("alert('ciao');")
    sleep(1)
  end

  it 'cannot test a remote application', :js => true do
    visit 'http://www.trovaprezzi.it/'
  end


end