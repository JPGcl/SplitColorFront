class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.integer   :user_id, :null => false
      t.integer   :image_id, :null => false
      t.integer   :process_type_id, :null => false
      t.integer   :state_process_id, :null => false
      t.datetime  :state_date, :null => false
      t.integer   :comment_id
      t.datetime  :creation_date, :null => false
      t.datetime  :end_date

      t.timestamps
    end
  end
end
