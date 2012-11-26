class Store < ActiveRecord::Base
  attr_accessible :description, :name
  has_many :users, :class => 'User'
end
