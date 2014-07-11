class CategoriesProduct < ActiveRecord::Base
  has_many :products
  has_many :categories
  belongs_to :product
  belongs_to :category
  
end
