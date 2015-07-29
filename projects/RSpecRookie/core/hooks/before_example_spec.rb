require "rspec/expectations"


class Thing

  def widgets
    @widgets ||= []
  end

end


RSpec.describe Thing do

  before(:example) do
    @thing = Thing.new
  end

end

