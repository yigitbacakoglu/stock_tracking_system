class Product < ActiveRecord::Base
  attr_accessible :brand, :cost_price, :description, :name, :price

  has_many :products_storehouses, :class_name => 'ProductsStorehouses'
  has_many :products_stores, :class_name => 'ProductsStores'
  has_many :stores, :through => :products_stores
  has_many :storehouses, :through => :products_storehouses

  has_many :product_categories, :class_name => 'ProductCategories'
  has_many :categories, :through => :product_categories

end
