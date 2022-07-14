class AddFavToMenu < ActiveRecord::Migration[7.0]
  def change
    add_column :menus, :fav, :boolean, default: false
  end
end
