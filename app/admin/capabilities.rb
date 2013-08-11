ActiveAdmin.register Capability do

	form do |f|
		f.inputs "Capability" do
			f.input :name
			f.input :key, :label => "Key, for API access"
			f.input :expiry_date, :label => "Optional expiry date"
		end
		f.inputs "Default Value" do
			f.input :val_type, :label => "Enter value type of boolean, string or numeric"
			f.input :default_val_bool, :label  => "If type is boolean, check box for default value of True"
			f.input :default_val_str, :label  => "If type is string, enter default string"
			f.input :default_val_num, :label  => "If type is numeric, enter default number"
		end
		f.actions
	end

end
