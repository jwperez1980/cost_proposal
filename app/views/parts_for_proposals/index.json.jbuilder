json.array!(@parts_for_proposals) do |parts_for_proposal|
  json.extract! parts_for_proposal, :id, :part_number, :descripton, :cost, :proposal_id
  json.url parts_for_proposal_url(parts_for_proposal, format: :json)
end
