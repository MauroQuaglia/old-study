class CapybaraController < ApplicationController

  def index
    @request_headers = "Request headers: [#{request.headers.inspect}]"
  end

end
