json.extract! tasks_status, :id, :task_status_description, :created_at, :updated_at
json.url tasks_status_url(tasks_status, format: :json)
