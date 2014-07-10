class CreateCategoriesProducts < ActiveRecord::Migration
  def change
    create_table :categories_products do |t|
      t.references :Product, index: true
      t.references :Category, index: true

      t.timestamps
    end
  end
end
