class ApplicationController < ActionController::Base
  protect_from_forgery

    private

    #Ensures that only admins can promote someone to an admin (see Users Controller)
  	def require_admin_user!
    	unless current_user && current_user.admin
      		render :json => "unauthorized user", :status => :unauthorized
    	end
	end

	#The next 2 methods will be called in the Active Admin Initializer
	def authenticate_admin_user!
	  authenticate_user!
	  unless current_user.admin?
	    flash[:alert] = "This area is restricted to administrators only."
	    redirect_to root_path
	  end
	end
	 
	def current_admin_user
	  return nil if user_signed_in? && !current_user.admin?
	  current_user
	end	



end
