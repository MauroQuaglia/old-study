require 'rails_helper'
require 'spec_helper'

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

  it 'manage headers' do
    visit '/capybara'

    expect(Capybara.current_session).to be(page)
    expect(Capybara.current_session.response_headers).to be(page.response_headers)
    expect(page.response_headers['Content-Type']).to eq('text/html; charset=utf-8')
  end

  it 'manage request headers' do
    visit '/capybara'

    expect(page.driver.instance_variable_get('@options')).to be(page.driver.options)

    puts options = page.driver.options
    options[:headers] = {'HTTP_USER_AGENT' => 'Googlebot'}
    page.driver.instance_variable_set '@options', options

    #capybara_options[:headers] = options
    #page.driver.instance_variable_set "@options", capybara_options
    #visit '/capybara'

    #puts page.request
  end

  it 'configure driver', :rack_test => :headers do
    headers = {'HTTP_USER_AGENT' => 'Capybara'}

    puts page.driver.options
   # puts page.driver.app.inspect

  end


  it 'not follow redirect when configured'
  it 'follow redirect by default'

  it 'is fast' do
    puts "Visit Capybara page in [#{Benchmark.realtime { visit '/capybara' }}] seconds."
  end

end