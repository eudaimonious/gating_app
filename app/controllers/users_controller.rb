class UsersController < ApplicationController

	before_filter :require_admin_user!
	before_filter :remove_admin_from_org, :only => [:edit, :update]


	def index
		@users = User.all

		respond_to do |format|
			format.html #index.html.erb
			format.json { render :json => @users }
		end
	end

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

  	private
  	helper_method :remove_admin_from_org
	def remove_admin_from_org
		if current_user.admin
			current_user.organization_id = nil
		end
	end

end