class CreatePlans < ActiveRecord::Migration[7.0]
  def change
    create_table :plans do |t|
      t.datetime  :payment_date
      t.datetime  :expiration_date
      t.integer   :type_plans_id, :null => false
      t.boolean   :enabled

      t.timestamps
    end
  end
end
