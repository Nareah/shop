class Product < ActiveRecord::Base
  
  validates :name, :description, :image_url, presence: true
  validates :price, numericality: {greater_than_or_equal_to: 0.01}
  validates :name, uniqueness: true
  validates :image_url, allow_blank: true, format: {
  with:
  %r{\.(gif|jpg|png)\Z}i,
  message: 'must be a URL for GIF, JPG or PNG image.'
  }
  has_many :categories_products
  belongs_to :categories_product 
  has_many :categories , through: :categories_products 
  attr_accessor :categories_products_attributes
  
  
end
