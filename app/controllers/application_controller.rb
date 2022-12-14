class ApplicationController < ActionController::Base
    before_action :switch_locale
    # if found the query param 'locale', it will change the translation
    # http://localhost:3000?locale=en
    def switch_locale
      cookies[:locale] = params[:locale] if params[:locale]
      return unless cookies[:locale]

      I18n.locale = cookies[:locale] if I18n.locale != cookies[:locale]
    end
end
