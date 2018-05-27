json.array!(@users) do |user|
  json.extract! user, :id, :name, :surname, :phone_number
  json.url product_url(user, format: :json)
end
