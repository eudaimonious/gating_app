class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.string :full_name
      t.string :slug

      t.timestamps
    end
  end
end
