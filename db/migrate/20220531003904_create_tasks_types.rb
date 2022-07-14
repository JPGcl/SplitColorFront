class CreateTasksTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks_types do |t|
      t.string :task_description, :null => false

      t.timestamps
    end
  end
end
