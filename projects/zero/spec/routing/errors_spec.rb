require 'rails_helper'

describe 'Errors routing' do

  it 'should route not found page for all verbs' do
    expect(get: '/404').to route_to(controller: 'errors', action: 'not_found')
    expect(mkworkspace: '/404').to route_to(controller: 'errors', action: 'not_found')
  end

  it 'should route internal server error page for all verbs' do
    expect(get: '/500').to route_to(controller: 'errors', action: 'internal_server_error')
    expect(mkworkspace: '/500').to route_to(controller: 'errors', action: 'internal_server_error')
  end

end