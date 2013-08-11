ActiveAdmin.register Capability do

	form do |f|
		f.inputs "Capability" do
			f.input :name
			f.input :key, :label => "Key, for API access"
			f.input :expiry_date, :label => "Optional expiry date"
		end
		f.actions
	end

end
