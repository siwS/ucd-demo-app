json.array!(@accesses) do |access|
  json.extract! access, :id, :username, :model, :time
  json.url product_url(product, format: :json)
end
