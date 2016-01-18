class CapybaraController < ApplicationController

  def welcome
  end

  def header
    @request_headers = "Request headers: [#{request.headers.inspect}]"
  end

  def get_cookie
    @cookie = "Cookie: [#{cookies[:driver]}]"
  end

  def set_cookie
    cookies[:gem] = {:value => 'capybara'}
  end

  def capybara_bulk_javascript

  end

end
