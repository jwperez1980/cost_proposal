json.array!(@proposals) do |proposal|
  json.extract! proposal, :id, :po_number, :quote_number, :date_quoted, :date_needed, :ship_via, :project_id
  json.url proposal_url(proposal, format: :json)
end
