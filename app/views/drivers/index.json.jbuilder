json.array!(@drivers) do |driver|
  json.extract! driver, :id, :area, :first_name, :last_name, :phone, :car, :availability, :order_id
  json.url driver_url(driver, format: :json)
end
