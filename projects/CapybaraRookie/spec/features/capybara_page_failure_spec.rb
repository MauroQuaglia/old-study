require 'rails_helper'

RSpec.feature 'Capybara page failure' do

  it 'first test' do
    puts '--- first test start ---'
    test_info
    puts '--- first test end ---'
  end

  it 'should rest driver if fails', :driver => :webkit do
    test_info
    fail
  end

  it 'default driver is rack_test' do
    puts '--- last test start ---'
    test_info
    puts '--- last test end ---'
  end


  private

  def test_info
    visit '/capybara'

    expect(page).to have_css('h1', text: 'Capybara')
    puts "Capybara.current_driver: [#{Capybara.current_driver}]"
  end

end