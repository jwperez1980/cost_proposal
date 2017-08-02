class PartsForProposal < ApplicationRecord
  belongs_to :proposal
  belongs_to :part
  
  def calculateCost
    Part.sum(:cost)
  end
end
