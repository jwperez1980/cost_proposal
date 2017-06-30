class CreatePartsForProposals < ActiveRecord::Migration[5.0]
  def change
    create_table :parts_for_proposals do |t|
      t.integer :part_number
      t.string :descripton
      t.numeric :cost
      t.references :proposal, foreign_key: true

      t.timestamps
    end
  end
end
