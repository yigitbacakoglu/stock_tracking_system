class Product < ActiveRecord::Base
  attr_accessible :brand, :cost_price, :description, :name, :price
end
