module DefaultPageContent
extend ActiveSupport::Concern
included do
	before_action :set_title
end

	def set_title
		@page_title = "My Portfolio | My Portfolio App"
		@seo_keywords = "Jordon Hudgens Portfolio"
	end 
end