class Proposal < ApplicationRecord
  belongs_to :project,
  has_many: projects
end
