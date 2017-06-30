class CreateClients < ActiveRecord::Migration[5.0]
  def change
    create_table :clients do |t|
      t.integer :account_number
      t.string :site
      t.string :institution
      t.integer :post_office_box
      t.string :street_address
      t.string :city
      t.integer :zip
      t.integer :zip_four
      t.string :phone
      t.string :email
      t.references :state, foreign_key: true

      t.timestamps
    end
  end
end
