# This is the base class for accessing CMS objects.
# See the documentation for details: http://rubydoc.info/gems/infopark_fiona_connector/RailsConnector/BasicObj
class Obj < RailsConnector::BasicObj
  # Your custom code goes here...


  def permitted_for_user?(user)
    return true
  end
end
