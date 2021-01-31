# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :set_locale

  def not_found                   #handled 404 for wrong routes
    respond_to do |format|
      format.html do
        render template: 'layouts/not_found', layout: 'layouts/application', status: 404
      end
      format.all { render nothing: true, status: 404 }
    end
  end

  private

  def set_locale                 #setting the language of the user's choice
    I18n.locale = extract_locale || I18n.default_locale
  end

  def extract_locale             #extract the language from params
    parsed_locale = params[:locale]
    I18n.available_locales.map(&:to_s).include?(parsed_locale) ? parsed_locale : nil
  end
end
