require 'rails_helper'

RSpec.feature 'Capybara page' do

  after do
    puts "Capybara.current_driver: [#{Capybara.current_driver}]"
  end

  it 'default driver is rack_test' do
    test_info
  end

  it 'default driver is rack_test (:driver => :rack_test)', :driver => :rack_test do
    test_info
  end

  it 'default javascript driver is selenium (activated by :js => true)', :js => true do
    test_info

  end

  it 'default javascript driver is selenium (:driver => :selenium)', :driver => :selenium do
    test_info
  end

  it 'javascript headless driver is webkit (:driver => :webkit)', :driver => :webkit do
    test_info
  end

  private

  def test_info
    visit '/capybara'

    expect(page).to have_css('h1', text: 'Capybara')
    puts "Capybara.current_driver: [#{Capybara.current_driver}]"
  end

end