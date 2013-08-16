class RenameSettingsTablesAgain < ActiveRecord::Migration
  def change
  	rename_table(:boolean, :setboolean)
  	rename_table(:numeric, :setnumeric)
  	rename_table(:string, :setstring)
  end


end
