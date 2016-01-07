require 'rails_helper'

RSpec.feature 'JavaScript support' do

  it 'rack_test', :driver => :rack_test  do
    expect {
      page.evaluate_script("alert('Hello');")
    }.to raise_error(Capybara::NotSupportedByDriverError)
  end

  it 'selenium', :driver => :selenium  do
    visit capybara_path

    sleep(1)
    value = page.evaluate_script("alert('Capybara!');")
    sleep(1)

    expect(value).to eq('Capybara!')
  end

  it 'webkit', :driver => :webkit  do
    visit capybara_path

    value = page.evaluate_script("alert('Capybara!');")

    expect(value).to be_nil
  end

  it 'poltergeist', :driver => :poltergeist  do
    visit capybara_path

    value = page.evaluate_script("alert('Capybara!');")

    expect(value).to be_nil
  end

end