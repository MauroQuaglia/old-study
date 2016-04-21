class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  #before_action :authorize
  before_action :set_i18n_locale_from_params

  protected

  def set_i18n_locale_from_params
    locale = params[:locale]
    if (locale)
      if I18n.available_locales.map(&:to_s).include?(locale)
        I18n.locale = locale
      else
        flash.now[:notice] = I18n.available_locales.map(&:to_s).inspect
      end
    end
  end

  def default_url_option
    {locale: I18n.locale}
  end

  def authorize
    unless User.find(id: session[:user_id])
      redirect_to login_url, notice: 'please log in'
    end
  end

end
