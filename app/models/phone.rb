class Phone < ActiveRecord::Base
  attr_accessible :address_id, :number
  belongs_to :address
end
