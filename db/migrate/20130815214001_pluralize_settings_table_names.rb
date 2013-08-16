class PluralizeSettingsTableNames < ActiveRecord::Migration
  def change
  	rename_table(:setboolean, :setbooleans)
  	rename_table(:setnumeric, :setnumerics)
  	rename_table(:setstring, :setstrings)
  end


end
