class CreateMenus < ActiveRecord::Migration[7.0]
  def change
    create_table :menus do |t|
      t.string :card_type
      t.string :icon
      t.string :name
      t.string :description
      t.string :rute

      t.timestamps
    end
  end
end
