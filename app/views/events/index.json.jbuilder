json.array!(@events) do |event|
  json.extract! event, :id, :title, :description, :date, :stock_count, :price, :sell_count
  json.url event_url(event, format: :json)
end
