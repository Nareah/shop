class Category < ActiveRecord::Base
  validates :title, :description, :image_url, presence: true
  validates :title, uniqueness: true
  validates :image_url, allow_blank: true, format: {
  with:
  %r{\.(gif|jpg|png)\Z}i,
  message: 'must be a URL for GIF, JPG or PNG image.'
  }
  
  has_many :categories_products
  belongs_to :categories_product
  has_many :products , through: :categories_products
end
