class Storehouse < ActiveRecord::Base
  attr_accessible :address_id, :name

  has_one :address
end
