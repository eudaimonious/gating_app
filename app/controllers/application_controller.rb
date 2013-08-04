class ApplicationController < ActionController::Base
  protect_from_forgery

    private

  	def require_admin_user!
    	unless current_user.admin
      		render :json => "unauthorized user", :status => :unauthorized
    	end
	end


end
