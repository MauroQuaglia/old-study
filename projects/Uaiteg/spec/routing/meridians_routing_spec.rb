require 'rails_helper'

RSpec.describe MeridiansController do

  it 'routes to #index' do
    expect(:get => "/meridians").to route_to("meridians#index")
  end

  it "routes to #new" do
    expect(:get => "/meridians/new").to route_to("meridians#new")
  end

  it "routes to #show" do
    expect(:get => "/meridians/1").to route_to("meridians#show", :id => "1")
  end

  it "routes to #edit" do
    expect(:get => "/meridians/1/edit").to route_to("meridians#edit", :id => "1")
  end

  it "routes to #create" do
    expect(:post => "/meridians").to route_to("meridians#create")
  end

  it "routes to #update via PUT" do
    expect(:put => "/meridians/1").to route_to("meridians#update", :id => "1")
  end

  it "routes to #update via PATCH" do
    expect(:patch => "/meridians/1").to route_to("meridians#update", :id => "1")
  end

  it "routes to #destroy" do
    expect(:delete => "/meridians/1").to route_to("meridians#destroy", :id => "1")
  end

end
