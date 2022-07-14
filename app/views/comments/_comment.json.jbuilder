json.extract! comment, :id, :comment_parent_id, :comment_type_id, :image_id, :comment, :created_at, :updated_at
json.url comment_url(comment, format: :json)
