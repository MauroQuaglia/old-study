require 'rails_helper'

RSpec.feature 'Remote URL accessibility' do

  it 'rack_test', :driver => :rack_test do
    expect {
      visit_remote_url
    }.to raise_error(ActionController::RoutingError)
  end

  it 'selenium', :driver => :selenium do
    visit_remote_url
  end

  it 'webkit', :driver => :webkit do
    visit_remote_url
  end

  it 'poltergeist', :driver => :poltergeist do
    visit_remote_url
  end

  private

  def visit_remote_url
    visit 'https://www.google.it/'

    expect(page).to have_css('div #hplogo')
  end

end