class TasksConfig < ApplicationRecord
    validates :task_id, presence: true
    validates :image_id, presence: true
    validates :config_id, presence: true
    validates :config_value, presence: true
end
