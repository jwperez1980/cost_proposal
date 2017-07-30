class Proposal < ApplicationRecord
  belongs_to :project
  has_many :projects
  has_many :partsForProposals
  has_many :parts, through: :partsForProposals
end
