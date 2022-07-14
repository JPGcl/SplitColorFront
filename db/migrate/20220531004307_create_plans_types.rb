class CreatePlansTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :plans_types do |t|
      t.string :plan_description, :null => false

      t.timestamps
    end
  end
end
