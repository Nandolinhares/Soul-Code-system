class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.string :company_name
      t.string :rg
      t.string :cpf
      t.string :phone
      t.string :email
      t.integer :status
      t.date :birthday
      t.text :notes

      t.timestamps null: false
    end
  end
end
