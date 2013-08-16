class RenameSettingsTables < ActiveRecord::Migration
  def change
  	rename_table(:capability_type_bools, :boolean)
  	rename_table(:capability_type_nums, :numeric)
  	rename_table(:capability_type_strs, :string)
  end


end
