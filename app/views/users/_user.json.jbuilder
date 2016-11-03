json.extract! user, :id, :login_id, :first_name, :last_name, :mail_address, :status, :created_at, :updated_at
json.url user_url(user, format: :json)