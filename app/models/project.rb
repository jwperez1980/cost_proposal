class Project < ApplicationRecord
  belongs_to :client

  def name_with_instituion
    "#{client.institution}: #{project_name}"
  end
end

