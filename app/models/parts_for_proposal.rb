class PartsForProposal < ApplicationRecord
  belongs_to :proposal
  belongs_to :part
end
