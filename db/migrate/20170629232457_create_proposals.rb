class CreateProposals < ActiveRecord::Migration[5.0]
  def change
    create_table :proposals do |t|
      t.string :po_number
      t.integer :quote_number
      t.date :date_quoted
      t.date :date_needed
      t.string :ship_via
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
