json.extract! plan, :id, :payment_date, :expiration_date, :type_plans_id, :enabled, :created_at, :updated_at
json.url plan_url(plan, format: :json)
