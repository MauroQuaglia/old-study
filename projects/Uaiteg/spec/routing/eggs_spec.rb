require 'rails_helper'

RSpec.describe 'route for eggs' do

  it 'should route homepage to eggs controller' do
    expect(get: root_path).to route_to(controller: 'eggs', action: 'index')
  end

end