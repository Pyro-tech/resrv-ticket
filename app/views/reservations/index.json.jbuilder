json.array!(@reservations) do |reservation|
  json.extract! reservation, :id, :customer_id, :event_id, :buy_count, :payment
  json.url reservation_url(reservation, format: :json)
end
