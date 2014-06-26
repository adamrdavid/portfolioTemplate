module ApplicationHelper

	# Returns the full title for each page
	def full_title(page_title)
		base_title = "Niel's Art"
		if page_title.empty?
			base_title
		else
			"#{base_title} | #{page_title}"
		end
	end
	
end