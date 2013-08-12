class CreateCapabilityTypeBools < ActiveRecord::Migration
  def change
    create_table :capability_type_bools do |t|
      t.boolean :value
      t.timestamps
    end
  end
end
