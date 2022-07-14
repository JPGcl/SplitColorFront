class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string    :username, :null => false
      t.string    :name, :null => false
      t.string    :last_name, :null => false
      t.string    :phone, :null => false
      t.integer   :user_type_id
      t.integer   :login_type_id
      t.integer   :plan_id, :null => false
      t.boolean   :enabled
      t.boolean   :confirm_email
      t.datetime  :registration_date, :null => false
      t.datetime  :discharge_date
      t.datetime  :confirmation_email_date

      ## Database authenticatable
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      t.integer  :sign_in_count, default: 0, null: false
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.string   :current_sign_in_ip
      t.string   :last_sign_in_ip

      ## Confirmable
      # t.string   :confirmation_token
      # t.datetime :confirmed_at
      # t.datetime :confirmation_sent_at
      # t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at

      t.timestamps null: false
    end
    add_index :usuarios, :email,                unique: true
    add_index :usuarios, :reset_password_token, unique: true
    # add_index :usuarios, :confirmation_token,   unique: true
    # add_index :usuarios, :unlock_token,         unique: true
    add_index :usuarios, :username, unique: true
  end
end