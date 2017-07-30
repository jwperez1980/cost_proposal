class Part < ApplicationRecord
    has_many :partsForProposals
    has_many :proposals, through: :partsForProposals
end
