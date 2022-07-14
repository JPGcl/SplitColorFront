class CreateCommentsTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :comments_types do |t|
      t.string :commment_description, :null => false

      t.timestamps
    end
  end
end
