json.extract! product, :id, :name, :description, :image_url, :product_type, :enabled, :created_at, :updated_at
json.url product_url(product, format: :json)
