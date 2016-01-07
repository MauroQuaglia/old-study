require 'rails_helper'
require 'spec_helper'

RSpec.feature 'rack_test driver' do



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


end