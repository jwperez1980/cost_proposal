class Client < ApplicationRecord
  belongs_to :state
  has_many :states
end
