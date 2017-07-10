json.array!(@parts_for_proposals) do |parts_for_proposal|
  json.extract! parts_for_proposal, :id, :quantity, :frequency, :quantity_per_visit, :proposal_id, :part_id
  json.url parts_for_proposal_url(parts_for_proposal, format: :json)
end
