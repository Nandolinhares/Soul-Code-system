class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :name
      t.string :rg
      t.string :cpf
      t.string :phone
      t.string :email
      t.references :department, index: true, foreign_key: true
      t.references :project, index: true, foreign_key: true
      t.string :scrum
      t.string :position

      t.timestamps null: false
    end
  end
end
