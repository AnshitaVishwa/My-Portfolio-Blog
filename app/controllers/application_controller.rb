class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception
	include DefaultPageContent
	before_action :set_source
	def set_source
		session[:source] = params[:q] if params[:q]
	end
	before_action :set_copyright
	def set_copyright
		@copyright = 	DevcampViewtool::Renderer.copyright 'Anshita Vishwa', 'All Rights Reserved'
	end
end

module DevcampViewtool
	class Renderer
		def self.copyright name, msg
			"&copy; #{Time.now.year} | <b>#{name}</b> #{msg}".html_safe
		end
	end
end
