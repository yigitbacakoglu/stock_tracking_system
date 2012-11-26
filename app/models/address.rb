class Address < ActiveRecord::Base
  attr_accessible :city, :country, :municipality, :street
end
