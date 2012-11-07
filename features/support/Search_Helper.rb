module Search_Helpers
	def check_search_box_is_present
		assert(@browser.text_field(:id, "searchQuery").size > 0)
	end

	def search_for_term(term)
		@browser.text_field(:id, "searchQuery").set term
		@browser.button(:id, "simple-search").click
	end
end
World(Search_Helpers)
