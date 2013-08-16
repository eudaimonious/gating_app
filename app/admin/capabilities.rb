ActiveAdmin.register Capability do
config.filters = false

	form do |f|
		f.inputs "Capability" do
			f.input :name
			#Select an admin user as the owner
			f.input :user_id, :as => :select, 
					:collection => options_for_select(User.where(admin: true).map{ |u| [u.email, u.id]}), 
					:label => "Capability Owner"
			f.input :key, :label => "Key, for API access"
			#Select the value type

			f.input :expiry_date, :label => "Optional expiry date"
		end

		f.fields_for :capability_setting do |s|
						s.input :setting_type,
					:collection => options_for_select([['Numeric', 'Setnumeric'], ['Text', 'Setstring'], ['Boolean', 'Setboolean']]), 
					:label => "Capability Setting Type"
		end



		f.actions
	end

end
