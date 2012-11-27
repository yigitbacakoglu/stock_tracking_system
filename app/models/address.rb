class Address < ActiveRecord::Base
  attr_accessible :city, :country, :municipality, :street

  has_many :phones
  has_many :emails
  has_many :websites
  has_one :store
  has_one :storehouse
end
