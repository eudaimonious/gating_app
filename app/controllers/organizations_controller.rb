class OrganizationsController < ApplicationController
	def index
		@organizations = Organization.all

		respond_to do |format|
			format.html #index.html.erb
			format.json { render :json => @organizations }
		end
	end

	def edit
		@organization.organizations_capabilities.build.build_capability
	end

end
