json.extract! user_post, :id, :id, :name, :title, :body, :update_at, :created_at, :updated_at
json.url user_post_url(user_post, format: :json)
