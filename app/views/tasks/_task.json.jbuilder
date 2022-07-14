json.extract! task, :id, :user_id, :image_id, :process_type_id, :state_process_id, :state_date, :comment_id, :creation_date, :end_date, :created_at, :updated_at
json.url task_url(task, format: :json)
