class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body

  has_many :users_stores, :class_name => 'UsersStores'
  has_many :stores, :through => :users_stores

  has_many :users_roles, :class_name => 'UsersRoles'
  has_many :roles, :through => :users_roles

end

