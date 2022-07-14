json.extract! image, :id, :image_type_id, :description, :input_hash, :output_hash, :image_parent_id, :image_url, :image_local_url, :date_input_hash, :date_output_hash, :created_at, :updated_at, :username
json.url image_url(image, format: :json)
