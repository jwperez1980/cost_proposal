json.array!(@projects) do |project|
  json.extract! project, :id, :project_name, :client_id
  json.url project_url(project, format: :json)
end
