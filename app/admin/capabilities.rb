ActiveAdmin.register Capability do

	form do |f|
		f.inputs "Capability" do
			f.input :name
			#Select an admin user as the owner
			f.input :user_id, :as => :select, :collection => options_for_select(User.where(admin: true).map{ |u| [u.email, u.id]}), :label => "Capability Owner"
			f.input :key, :label => "Key, for API access"
			f.input :expiry_date, :label => "Optional expiry date"
		end
		f.actions
	end

end
