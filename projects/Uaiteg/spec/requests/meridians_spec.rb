require 'rails_helper'

RSpec.describe "Meridians", type: :request do
  describe "GET /meridians" do
    it "works! (now write some real specs)" do
      get meridians_path
      expect(response).to have_http_status(200)
    end
  end
end
