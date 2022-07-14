json.extract! tasks_type, :id, :task_description, :created_at, :updated_at
json.url tasks_type_url(tasks_type, format: :json)
