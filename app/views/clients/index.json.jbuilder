json.array!(@clients) do |client|
  json.extract! client, :id, :account_number, :site, :institution, :post_office_box, :street_address, :city, :zip, :zip_four, :phone, :email, :state_id
  json.url client_url(client, format: :json)
end
