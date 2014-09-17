class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :set_locale

  def set_locale
    I18n.locale = Localizer.detect_locale(@obj, request)
  end
  # def current_user
  #   return nil
  # end


end
