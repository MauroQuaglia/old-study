require 'rails_helper'

RSpec.describe 'Root' do

  it 'should route to meridians#index' do
    expect(:get => root_path).to route_to(controller: 'meridians', action: 'index')
  end

end
