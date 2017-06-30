class CreateClientContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :client_contacts do |t|
      t.string :last_name
      t.string :first_name
      t.string :nick_name
      t.string :email

      t.timestamps
    end
  end
end
