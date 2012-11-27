class StoresStoreHouses < ActiveRecord::Base
  attr_accessible :store_id, :storehouse_id, :distance, :duration

  belongs_to :store
  belongs_to :storehouse
end
