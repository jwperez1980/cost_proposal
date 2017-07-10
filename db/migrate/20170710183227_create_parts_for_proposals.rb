class CreatePartsForProposals < ActiveRecord::Migration[5.0]
  def change
    create_table :parts_for_proposals do |t|
      t.integer :quantity
      t.integer :frequency
      t.integer :quantity_per_visit
      t.references :proposal, foreign_key: true
      t.references :part, foreign_key: true

      t.timestamps
    end
  end
end
