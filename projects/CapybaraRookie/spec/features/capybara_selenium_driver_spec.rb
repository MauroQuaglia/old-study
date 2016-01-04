require 'rails_helper'

RSpec.feature 'selenium driver', :driver => :selenium do

  it 'is selenium when specified' do
    expect(Capybara.current_driver).to be(:selenium)
  end

  it 'support javascript' do
    visit '/capybara'

    sleep(1)
    value = page.evaluate_script("alert('Hello');")
    sleep(1)

    expect(value).to eq('Hello')
  end

  it 'can visit a remote application' do
    visit 'https://www.google.it/'

    expect(page).to have_css('div #hplogo')
  end

  it 'cannot support page status code' do
    visit '/capybara'

    expect {
      page.status_code
    }.to raise_error(Capybara::NotSupportedByDriverError)
  end

  it 'is slow' do
    puts "Visit Capybara page in [#{Benchmark.realtime { visit '/capybara' }}] seconds."
  end

end