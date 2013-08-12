ActiveAdmin.register User do
  filter :organization
  filter :admin
  index do
  	column :id
  	column :email
  	column :admin
  	column :organization
  	column :authentication_token
  	column :created_at
  	column :last_sign_in_at
  	default_actions
  end
end
