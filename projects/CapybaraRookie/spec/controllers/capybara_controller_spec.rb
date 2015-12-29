require 'rails_helper' # usando cose di Rails è necessario metterlo.

RSpec.describe CapybaraController do

  it 'returns http success light' do
    get :index
    puts response.status
  end

  xit 'returns http success spec decorated', :puts_in_spec_helper => :on do
    get :index
    puts response.status
  end

  xit 'returns http success rails decorated', :puts_in_rails_helper => :on do
    get :index
    puts response.status
  end

end
