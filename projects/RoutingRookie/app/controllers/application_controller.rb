class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def not_found
    render text: 'Not Found [404]', status: 404
  end

  def bad_request
    render text: 'Bad Request [400]', status: 400
  end

  def gone
    render text: 'Gone [410]', status: 410
  end

  def not_acceptable
    render text: 'Not Acceptable [406]', status: 406
  end

end
