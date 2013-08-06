class ApplicationController < ActionController::Base
  protect_from_forgery

    private

    #Ensures that only admins can promote someone to an admin (see Users Controller)
  	def require_admin_user!
    	unless current_user && current_user.admin
      		render :json => "unauthorized user", :status => :unauthorized
    	end
	end




end
