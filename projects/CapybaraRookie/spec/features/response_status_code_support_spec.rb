require 'rails_helper'

RSpec.feature 'Response status code support' do

  it 'rack_test', :driver => :rack_test do
    status_code
  end

  it 'selenium', :driver => :selenium do
    expect {
      status_code
    }.to raise_error(Capybara::NotSupportedByDriverError)
  end

  it 'webkit', :driver => :webkit do
    status_code
  end

  it 'poltergeist', :driver => :poltergeist do
    status_code
  end

  private

  def status_code
    visit welcome_path

    expect(page.status_code).to be(200)
  end

end