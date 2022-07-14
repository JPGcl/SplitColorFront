class AddNameToImage < ActiveRecord::Migration[7.0]
  def change
    add_column :images, :name, :string, default: ""
  end
end
