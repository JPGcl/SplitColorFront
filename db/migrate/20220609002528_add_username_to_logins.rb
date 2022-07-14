class AddUsernameToLogins < ActiveRecord::Migration[7.0]
  def change
    add_column :logins, :username, :string, null: false, default: ""
    add_index :logins, :username, unique: true
  end
  

end
