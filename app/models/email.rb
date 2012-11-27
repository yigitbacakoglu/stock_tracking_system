class Email < ActiveRecord::Base
  attr_accessible :address_id, :url
  belongs_to :address
end
