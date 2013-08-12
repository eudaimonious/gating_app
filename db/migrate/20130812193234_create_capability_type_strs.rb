class CreateCapabilityTypeStrs < ActiveRecord::Migration
  def change
    create_table :capability_type_strs do |t|
      t.string :value
      t.timestamps
    end
  end
end
