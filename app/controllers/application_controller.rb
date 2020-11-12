class ApplicationController < ActionController::Base
    before_action :load_language

    def load_language
        I18n.default_locale = session[:locale] || I18n.default_locale
    end
end
