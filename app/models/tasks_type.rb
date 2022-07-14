class TasksType < ApplicationRecord
    validates :task_type_description, presence: true
end
