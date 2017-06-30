class CreateParts < ActiveRecord::Migration[5.0]
  def change
    create_table :parts do |t|
      t.integer :part_number
      t.string :description
      t.numeric :cost

      t.timestamps
    end
  end
end
