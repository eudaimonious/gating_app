class UsersController < ApplicationController

	#Ensures that only admins can promote someone to an admin (see App Controller)
	before_filter :require_admin_user!

	#This isn't working before_filter :remove_admin_from_org, :only => [:edit, :update]


	def index
		@users = User.all

		respond_to do |format|
			format.html #index.html.erb
			format.json { render :json => @users }
		end
	end

	#This is really just for promoting users to admins. Users edit their profiles
	#and view their API key via the Devise Controller
	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])

		respond_to do |format|
    		if @user.update_attributes(params[:user])
      			format.html  { redirect_to(users_path,
                    :notice => 'User was successfully updated.') }
      			format.json  { head :no_content }
    		else
      			format.html  { render :action => "edit" }
      			format.json  { render :json => user.errors,
                    :status => :unprocessable_entity }
    		end
    	end
  	end

  	"""
  	This isn't working
  	private
  	helper_method :remove_admin_from_org
	def remove_admin_from_org
		if current_user.admin
			current_user.organization_id = nil
		end
	end
	"""
end