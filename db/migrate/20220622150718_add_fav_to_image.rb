class AddFavToImage < ActiveRecord::Migration[7.0]
  def change
    add_column :images, :fav, :boolean, default: false
  end
end
