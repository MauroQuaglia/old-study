require 'rails_helper'

RSpec.feature 'How poltergeist driver run', :driver => :poltergeist do


  it 'need phantom js' do
    expect(`phantomjs -v`.strip).to eq('1.9.8')
    # You don't need Xvfb or any running X server at all
  end

  it 'save_screenshot if needed' do
    visit capybara_path
    save_screenshot('/home/xpuser/Desktop/file1.png')
    save_screenshot('/home/xpuser/Desktop/file2.png', full: true)
  end

  xit 'support remote debugging', :driver => :poltergeist_debug do
    visit capybara_path

    page.driver.debug
  end

  it 'skip unnecessary download'do
    page.driver.browser.url_blacklist = ['http://www.google-analytics.com/analytics.js']
    puts "[#{Benchmark.realtime { visit capybara_bulk_javascript_path }}] with skip javascript download."
  end

  it 'not skip unnecessary download'do
    puts "[#{Benchmark.realtime { visit capybara_bulk_javascript_path }}] without skip javascript download."
  end


end