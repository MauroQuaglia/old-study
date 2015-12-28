require 'rails_helper'

RSpec.describe CapybaraController do

  it 'returns http success light' do
    get :index
    puts response.status
  end

  it 'returns http success spec decorated', :puts_in_spec_helper => :on do
    get :index
    puts response.status
  end

  it 'returns http success rails decorated', :puts_in_rails_helper => :on do
    get :index
    puts response.status
  end

end
