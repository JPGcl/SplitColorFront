class CreateImagesTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :images_types do |t|
      t.string :image_type_description, :null => false

      t.timestamps
    end
  end
end
