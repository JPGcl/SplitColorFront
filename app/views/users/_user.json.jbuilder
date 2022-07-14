json.extract! user, :id, :name, :last_name, :email, :phone, :password, :user_type_id, :login_type_id, :plan_id, :enabled, :confirm_email, :registration_date, :discharge_date, :confirmation_email_date, :created_at, :updated_at
json.url user_url(user, format: :json)
