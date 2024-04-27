json.extract! author, :id, :auth_f_name, :auth_l_name, :birth_date, :death_date, :bio, :created_at, :updated_at
json.url author_url(author, format: :json)
