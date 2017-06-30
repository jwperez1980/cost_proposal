json.array!(@employees) do |employee|
  json.extract! employee, :id, :last_name, :first_name, :nickname, :email
  json.url employee_url(employee, format: :json)
end
