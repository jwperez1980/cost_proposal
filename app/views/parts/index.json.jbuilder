json.array!(@parts) do |part|
  json.extract! part, :id, :part_number, :description, :cost
  json.url part_url(part, format: :json)
end
