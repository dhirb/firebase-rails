json.extract! user, :id, :name, :api_token, :provider_id, :created_at, :updated_at
json.url user_url(user, format: :json)