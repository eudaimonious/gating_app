class CreateCapabilityTypeNums < ActiveRecord::Migration
  def change
    create_table :capability_type_nums do |t|
      t.integer :value
      t.timestamps
    end
  end
end
