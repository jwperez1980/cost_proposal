json.array!(@client_contacts) do |client_contact|
  json.extract! client_contact, :id, :last_name, :first_name, :nick_name, :email
  json.url client_contact_url(client_contact, format: :json)
end
