json.array!(@restaurants) do |restaurant|
  json.extract! restaurant, :id, :name, :phone_number, :description, :logo, :image
  json.url restaurant_url(restaurant, format: :json)
end
