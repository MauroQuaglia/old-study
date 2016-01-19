require 'rails_helper'

RSpec.feature 'How poltergeist driver run' do

  it 'need phantom js' do
    expect(`phantomjs -v`.strip).to eq('1.9.8')
    # You don't need Xvfb or any running X server.
  end

  xit 'support remote debugging', :driver => :poltergeist_debug do
    visit capybara_header_path

    page.driver.debug
  end

  it 'skip unnecessary download', :driver => :poltergeist do
    page.driver.browser.url_blacklist = ['http://www.google-analytics.com', 'https://ajax.googleapis.com' ]
    puts "[#{Benchmark.realtime { visit capybara_javascript_path }}] with skip javascript download."
  end

  it 'not skip unnecessary download', :driver => :poltergeist do
    puts "[#{Benchmark.realtime { visit capybara_javascript_path }}] without skip javascript download."
  end


end