class CreateProductsTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :products_types do |t|
      t.string :name
      t.string :product_type_description

      t.timestamps
    end
  end
end
