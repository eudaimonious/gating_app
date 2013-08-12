ActiveAdmin.register Organization do
	form do |f|
		f.inputs "Details" do
			f.input :full_name
			f.input :slug
		end

		f.has_many :organizations_capabilities do |join_f|
			join_f.inputs "Capabilities" do
				if !join_f.object.nil?
					#show the destroy checkbox if it is an assigned capability
					#else, there's already dynamic JS to add / remove new capabilities
					join_f.input :_destroy, :as => :boolean, :label => "Remove?"
				end

				join_f.input :capability #should automatically generate a drop-down select box
			end
  		end
  		f.actions
  	end
end


#:capability_id, :as => :select, :collection => options_for_select(Capability.all.map{ |c| [c.name, c.id]}), :label => "Capability"
