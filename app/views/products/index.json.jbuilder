json.array!(@products) do |product|
  json.extract! product, :id, :product_code, :product_description, :availability, :price
  json.url product_url(product, format: :json)
end
