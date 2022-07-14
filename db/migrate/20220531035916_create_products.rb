class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.string :image_url
      t.string :product_type
      t.boolean :enabled

      t.timestamps
    end
  end
end
