class CapabilitiesController < ApplicationController
	def index
		@organization = current_user.organization
		@capabilities = Capability.all


		respond_to do |format|
			format.html #index.html.erb
			format.json { render :json => @capabilities }
		end
	end

	def show
		@capability = Capability.find_by_key(params[:key])
		render :json => @capability
	end
end
