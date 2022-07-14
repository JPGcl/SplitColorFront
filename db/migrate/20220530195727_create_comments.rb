class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.integer :comment_parent_id
      t.integer :comment_type_id
      t.integer :image_id, :null => false
      t.string  :comment, :null => false

      t.timestamps
    end
  end
end
