class ApplicationController < ActionController::Base
  protect_from_forgery

    private

    def after_sign_in_path_for(resource)
    	if current_user.admin
  			admin_root_path
  		else
  			capabilities_path
  		end
	end

    #Implement this to ensure a json response for unauthorized users
    #render :json => "unauthorized user", :status => :unauthorized


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
