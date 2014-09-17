module BlogEntryHelper

	def readable_author(blog_entry)
		name = blog_entry.readbale_author
		if Rails.env == "preview"
		  name = "#{name} (#{display_field(blog_entry, ::author)})"
		  return name.html_safe
		end
	end

end
