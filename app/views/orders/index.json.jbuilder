json.array!(@orders) do |order|
  json.extract! order, :id, :user, :product, :quantity, :total_price
  json.url product_url(product, format: :json)
end
