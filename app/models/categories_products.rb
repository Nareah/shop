class CategoriesProducts < ActiveRecord::Base
  belongs_to :Product
  belongs_to :Category
end
