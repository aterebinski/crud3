class LocalesController < ApplicationController
    def change_language
        session[:locale] = params[:id]
        # id = params[:id]
        # I18n.default_locale = id
        redirect_back(fallback_location: root_path)
    end
end
