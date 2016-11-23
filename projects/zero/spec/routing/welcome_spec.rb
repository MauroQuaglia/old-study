require 'rails_helper'

describe 'Welcome routing' do

  it 'should route to homepage' do
    expect(get: '/').to route_to(controller: 'welcome', action: 'home')
  end

end