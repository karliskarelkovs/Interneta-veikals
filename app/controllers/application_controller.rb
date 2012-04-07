class ApplicationController < ActionController::Base
  protect_from_forgery

  	def not_authenticated
		redirect_to root_url, :alert => "First login to access this page."
	end
  
end