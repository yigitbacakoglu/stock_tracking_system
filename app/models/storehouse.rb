class Storehouse < ActiveRecord::Base
  attr_accessible :address_id, :name, :description, :products_attributes, :stores_attributes, :address_attributes

  has_one :address
  has_many :stores_store_houses, :class_name => 'StoresStoreHouses', :dependent => :destroy
  has_many :stores, :through => :stores_store_houseses

  has_many :products_storehouses, :class_name => 'ProductsStorehouses' , :dependent => :destroy
  has_many :products, :through => :products_storehouseses

  accepts_nested_attributes_for :products, :stores,  :address
end
