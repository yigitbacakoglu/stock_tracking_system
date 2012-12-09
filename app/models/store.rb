class Store < ActiveRecord::Base
  attr_accessible :description, :name, :storehouses_attributes, :products_attributes, :address_attributes

  has_many :stores_store_houses, :class_name => 'StoresStoreHouses'
  has_many :storehouses, :through => :stores_store_houseses
  has_many :products_stores, :class_name => 'ProductsStores'
  has_many :products, :through => :products_stores
  belongs_to :address, :dependent => :destroy
  #Users
  has_many :users_stores, :class_name => 'UsersStores'
  has_many :users, :through => :users_stores
  #Profile
  has_many :websites, :through => :address
  has_many :phones, :through => :address
  has_many :emails, :through => :address

  accepts_nested_attributes_for :storehouses, :products, :address
end
