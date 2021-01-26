class ApplicationController < ActionController::Base
	before_action :set_locale

	def not_found
		respond_to do |format|
      format.html { render template: 'layouts/not_found', layout: 'layouts/application', status: 404 }
      format.all  { render nothing: true, status: 404 }
    end
	end

	private

	def set_locale
		I18n.locale = extract_locale || I18n.default_locale
	end

  def extract_locale
    parsed_locale = params[:locale]
    I18n.available_locales.map(&:to_s).include?(parsed_locale) ? parsed_locale : nil
  end
end
