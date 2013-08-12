ActiveAdmin.register Capability do

	form do |f|
		f.inputs "Capability" do
			f.input :name
			#Select an admin user as the owner
			f.input :user_id, :as => :select, 
					:collection => options_for_select(User.where(admin: true).map{ |u| [u.email, u.id]}), 
					:label => "Capability Owner"
			f.input :key, :label => "Key, for API access"
			#Select the value type
			f.input :capability_type_type, :as => :select, 
					:collection => options_for_select([['Numeric', 'CapabilityTypeNum'], ['Text', 'CapabilityTypeStr'], ['Boolean', 'CapabilityTypeBool']]), 
					:label => "Capability Setting Type"
			f.input :expiry_date, :label => "Optional expiry date"
		end
		f.fields_for :capability_types do |ct|
				ct.inputs # :value, :label => "Enter Setting Value (Integers Only)"
		end



		f.actions
	end

end
