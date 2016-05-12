require 'rails_helper'

RSpec.describe 'route categoria.aspx' do

  it 'should route to redirections controller without parameters' do
    expect(get: 'categoria.aspx').to route_to(controller: 'redirections', action: 'index')
    expect(get: 'categoria.aspx?').to route_to(controller: 'redirections', action: 'index')
  end

  it 'should route to redirections controller with parameters' do
    expect(get: 'categoria.aspx?a').to route_to(controller: 'redirections', action: 'index', a: nil)
    expect(get: 'categoria.aspx?a=').to route_to(controller: 'redirections', action: 'index', a: '')
    expect(get: 'categoria.aspx?a=b').to route_to(controller: 'redirections', action: 'index', a: 'b')
  end

end