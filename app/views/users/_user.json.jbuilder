json.extract! user, :id, :status, :f_name, :l_name, :email, :admin, :password, :created_at, :updated_at
json.url user_url(user, format: :json)
