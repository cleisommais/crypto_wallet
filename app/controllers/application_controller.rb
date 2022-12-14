class ApplicationController < ActionController::Base
    around_action :switch_locale
    # if found the query param 'locale', it will change the translation
    def switch_locale(&action)
      locale = params[:locale] || I18n.default_locale
      I18n.with_locale(locale, &action)
    end
end
