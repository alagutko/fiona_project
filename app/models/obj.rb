# This is the base class for accessing CMS objects.
# See the documentation for details: http://rubydoc.info/gems/infopark_fiona_connector/RailsConnector/BasicObj
class Obj < RailsConnector::BasicObj
  # Your custom code goes here...


  def permitted_for_user?(user)
    return true
  end

  def homepage
    object = ancestors
    object.reject!{ |item| item.suppress_export?}
    objects.drop_while{|item| not (
      item.is_a? Homepage or 
          item == object.last
    )
    }

    object.first
  end
end
