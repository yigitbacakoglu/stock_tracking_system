class Role < ActiveRecord::Base
  attr_accessible :name
  has_many :users_roles, :class_name => 'UsersRoles'
end
