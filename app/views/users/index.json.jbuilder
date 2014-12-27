json.array!(@users) do |user|
  json.extract! user, :id, :username, :password, :about_me, :dp, :admin
  json.url user_url(user, format: :json)
end
