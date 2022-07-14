class CreateTasksStatuses < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks_statuses do |t|
      t.string :task_status_description, :null => false
      
      t.timestamps
    end
  end
end
