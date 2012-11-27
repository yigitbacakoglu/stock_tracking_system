class ProductsStores < ActiveRecord::Base
  attr_accessible :product_id, :store_id
  belongs_to :product
  belongs_to :store
end
