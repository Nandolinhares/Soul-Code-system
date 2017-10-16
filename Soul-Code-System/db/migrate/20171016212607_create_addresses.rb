class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :country
      t.string :city
      t.string :state
      t.string :neighborhood
      t.string :street
      t.string :number
      t.references :client, index: true, foreign_key: true
      t.references :member, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
