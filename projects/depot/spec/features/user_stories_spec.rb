require 'rails_helper'

RSpec.describe "UserStories" do
  fixtures :products


  describe "GET /user_stories" do

    it "works! (now write some real specs)" do
      LineItem.delete_all
      Order.delete_all
      ruby_book = products(:ruby)

      ActionMailer::Base.deliveries.last
    end
  end

end
