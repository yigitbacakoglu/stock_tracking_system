class CreateProductsStorehouses < ActiveRecord::Migration
  def change
    create_table :products_storehouses do |t|
      t.integer :product_id
      t.integer :storehouse_id
      t.integer :count_on_hand

      t.timestamps
    end
  end
end
