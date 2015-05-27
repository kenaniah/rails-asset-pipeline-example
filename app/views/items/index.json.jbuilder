json.array!(@items) do |item|
  json.extract! item, :id, :name, :due_date, :priority
  json.url item_url(item, format: :json)
end
