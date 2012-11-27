class UsersStores < ActiveRecord::Base
  attr_accessible :store_id, :user_id
  belongs_to :user
  belongst_to :store
end
