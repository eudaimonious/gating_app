class CreateCapabilitySettings < ActiveRecord::Migration
  def change
    create_table :capability_settings do |t|
      t.integer :capability_id
      t.references :setting, polymorphic: true

      t.timestamps
    end

    add_index :capability_settings, \
    [:capability_id, :setting_id, :setting_type], \
    :name =>'setting_index'
  end
end