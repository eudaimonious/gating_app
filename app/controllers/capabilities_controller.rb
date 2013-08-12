class CapabilitiesController < ApplicationController
	def index
		@organization = current_user.organization
		@capabilities = Capability.all


		respond_to do |format|
			format.html #index.html.erb
			format.json { render :json => @capabilities }
		end
	end

	def edit
		console.log("HELLO")
		@capability.build.build_capability_type
		console.log(capability.build.build_capability_type)
	end
end
