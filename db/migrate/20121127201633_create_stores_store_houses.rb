class CreateStoresStoreHouses < ActiveRecord::Migration
  def change
    create_table :stores_store_houses do |t|
      t.integer :store_id
      t.integer :storehouse_id
      t.decimal :distance
      t.decimal :duration

      t.timestamps
    end
  end
end
