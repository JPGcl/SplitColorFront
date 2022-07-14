json.extract! tasks_config, :id, :task_id, :image_id, :config_id, :config_value, :enabled, :created_at, :updated_at
json.url tasks_config_url(tasks_config, format: :json)
