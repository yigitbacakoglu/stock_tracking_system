class Transfers < ActiveRecord::Base
  attr_accessible :distance, :duration, :from_id, :from_type, :to_id, :to_type
end
