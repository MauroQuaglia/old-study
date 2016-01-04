require 'rails_helper'

RSpec.feature 'webkit driver', :driver => :webkit do

  it 'is webkit when specified' do
    expect(Capybara.current_driver).to be(:webkit)
  end

  it 'support javascript' do
    visit '/capybara'

    sleep(1)
    value = page.evaluate_script("alert('Hello');")
    sleep(1)

    expect(value).to be_nil
  end

  it 'can visit a remote application' do
    visit 'https://www.google.it/'

    expect(page).to have_css('div #hplogo')
  end

  it 'cannot support page status code' do
    visit '/capybara'

    expect(page.status_code).to be(200)
  end

  it 'is medium fast' do
    puts "Visit Capybara page in [#{Benchmark.realtime { visit '/capybara' }}] seconds."
  end

end