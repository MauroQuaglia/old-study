require 'rails_helper'

RSpec.describe 'routes for eggs' do

  it 'routes /eggs to the eggs controller' do
    expect(get: '/eggs').to route_to({controller: 'eggs', action: 'index'})
  end

  it 'route / to the eggs controller' do
    expect(get: root_path).to route({controller: 'eggs', action: 'index'})
  end

end