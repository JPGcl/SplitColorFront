class CreateImages < ActiveRecord::Migration[7.0]
  def change
    create_table :images do |t|
      t.integer   :image_type_id
      t.string    :description, :null => false
      t.string    :input_hash, :null => false
      t.string    :output_hash, :null => false
      t.integer   :image_parent_id
      t.string    :image_url, :null => false
      t.string    :image_local_url
      t.datetime  :date_input_hash
      t.datetime  :date_output_hash

      t.timestamps
    end
  end
end
