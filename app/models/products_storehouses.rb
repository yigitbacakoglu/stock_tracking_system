class ProductsStorehouses < ActiveRecord::Base
  attr_accessible :count_on_hand, :product_id, :storehouse_id
  belongs_to :product
  belongs_to :storehouse
  validates_uniqueness_of :product_id, :scope => :storehouse_id


  def duplicate
    errors.add('Record is', 'Duplicate, You have a storehouse already connected with product') unless ProductsStorehouses.where(:storehouse_id => storehouse_id, :product_id => product_id).count == 0
  end
end
