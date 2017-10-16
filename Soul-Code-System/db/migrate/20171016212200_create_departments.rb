class CreateDepartments < ActiveRecord::Migration
  def change
    create_table :departments do |t|
      t.string :name
      t.string :manager
      t.string :phone
      t.string :email

      t.timestamps null: false
    end
  end
end
