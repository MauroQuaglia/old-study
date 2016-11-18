require 'rails_helper'

describe 'Errors routing' do

  it 'should route not found page for all verbs' do
    expect(get: '/404').to route_to(controller: 'errors', action: 'not_found')
    expect(post: '/404').to route_to(controller: 'errors', action: 'not_found')
    expect(put: '/404').to route_to(controller: 'errors', action: 'not_found')
    expect(patch: '/404').to route_to(controller: 'errors', action: 'not_found')
    expect(delete: '/404').to route_to(controller: 'errors', action: 'not_found')
  end

  it 'should route internal server error page for all verbs' do
    expect(get: '/500').to route_to(controller: 'errors', action: 'internal_server_error')
    expect(post: '/500').to route_to(controller: 'errors', action: 'internal_server_error')
    expect(put: '/500').to route_to(controller: 'errors', action: 'internal_server_error')
    expect(patch: '/500').to route_to(controller: 'errors', action: 'internal_server_error')
    expect(delete: '/500').to route_to(controller: 'errors', action: 'internal_server_error')
  end

end