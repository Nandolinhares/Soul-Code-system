class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.date :sale_date
      t.date :deadline
      t.string :company_name
      t.string :phone
      t.integer :status
      t.references :client, index: true, foreign_key: true
      t.text :cliente_note

      t.timestamps null: false
    end
  end
end
