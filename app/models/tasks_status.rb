class TasksStatus < ApplicationRecord
    validates :task_status_description, presence: true
end
