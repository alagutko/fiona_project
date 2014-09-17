class BlogEntry < Obj
  # attr_accessible :title, :body

  def readable_author
     return "System" if author == 'root'
     return author
  end
end
