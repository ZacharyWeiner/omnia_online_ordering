json.array!(@orders) do |order|
  json.extract! order, :id, :menu_item_id, :restaurant_id, :street_address, :street_address_2, :street_address_2, :city, :state, :user_id
  json.url order_url(order, format: :json)
end
