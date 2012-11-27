class TransferRequest < ActiveRecord::Base
  attr_accessible :count, :state, :transfer_id
end
