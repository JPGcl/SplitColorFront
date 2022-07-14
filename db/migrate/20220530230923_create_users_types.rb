class CreateUsersTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :users_types do |t|
      t.string :user_description, :null => false

      t.timestamps
    end
  end
end
