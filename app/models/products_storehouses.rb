class ProductsStorehouses < ActiveRecord::Base
  attr_accessible :count_on_hand, :product_id, :storehouse_id
  belongs_to :product
  belongs_to :storehouse
end
