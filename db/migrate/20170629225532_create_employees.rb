class CreateEmployees < ActiveRecord::Migration[5.0]
  def change
    create_table :employees do |t|
      t.string :last_name
      t.string :first_name
      t.string :nickname
      t.string :email

      t.timestamps
    end
  end
end
