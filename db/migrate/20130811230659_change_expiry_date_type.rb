class ChangeExpiryDateType < ActiveRecord::Migration
  def change
  	change_table :capabilities do |t|
      t.remove :expiry_date
      t.date :expiry_date
     end
  end
end
