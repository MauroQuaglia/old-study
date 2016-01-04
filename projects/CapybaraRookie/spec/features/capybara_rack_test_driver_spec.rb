require 'rails_helper'

RSpec.feature 'rack_test driver' do

  it 'is default when no specified' do
    expect(Capybara.current_driver).to be(:rack_test)
  end

  it 'cannot support javascript' do
    expect {
      page.evaluate_script("alert('Hello');")
    }.to raise_error(Capybara::NotSupportedByDriverError)
  end

  it 'cannot visit a remote application' do
    expect {
      visit 'https://www.google.it/'
    }.to raise_error(ActionController::RoutingError)
  end

  it 'support page status code' do
    visit '/capybara'

    expect(page.status_code).to be(:success)
  end

  it 'is fast' do
    puts "Visit Capybara page in [#{Benchmark.realtime { visit '/capybara' }}] seconds."
  end

end