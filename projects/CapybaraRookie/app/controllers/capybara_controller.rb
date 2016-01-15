class CapybaraController < ApplicationController

  def welcome

  end

  def index
    @request_headers = "Request headers: [#{request.headers.inspect}]"
  end

  def show_cookie
    @cookie = "Cookie: [#{cookies[:driver]}]"
  end

  def capybara_bulk_javascript

  end

end
