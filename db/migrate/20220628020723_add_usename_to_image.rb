class AddUsenameToImage < ActiveRecord::Migration[7.0]
  def change
    add_column :images, :username, :string, default: "", null: false
  end
end
