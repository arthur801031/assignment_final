json.array!(@users) do |user|
  json.extract! user, :name, :assignment, :email
  json.url user_url(user, format: :json)
end