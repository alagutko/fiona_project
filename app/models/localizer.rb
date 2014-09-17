class Localizer < ActiveRecord::Base
  # attr_accessible :title, :body

  def self.detect_locale(obj, request)
    if obj.present? && obj.mime_type = "text/html" && obj.homepage.respond_to?('name')
      return obj.homepage.name.to_sym
    end
  end
end
