class CreateTasksConfigs < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks_configs do |t|
      t.integer :task_id, :null => false
      t.integer :image_id, :null => false
      t.integer :config_id, :null => false
      t.string  :config_value, :null => false
      t.boolean :enabled

      t.timestamps
    end
  end
end
