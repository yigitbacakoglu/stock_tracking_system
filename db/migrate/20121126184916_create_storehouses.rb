class CreateStorehouses < ActiveRecord::Migration
  def change
    create_table :storehouses do |t|
      t.string :name
      t.string :description
      t.integer :address_id

      t.timestamps
    end
  end
end
